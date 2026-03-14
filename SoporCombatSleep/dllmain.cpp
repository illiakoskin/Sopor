#define WIN32_LEAN_AND_MEAN
#include <Windows.h>
#undef min
#undef max

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cwctype>
#include <functional>
#include <limits>
#include <string>
#include <unordered_map>
#include <vector>

#include <Mod/CppUserModBase.hpp>
#include <DynamicOutput/DynamicOutput.hpp>
#include <Unreal/Hooks.hpp>
#include <Unreal/FText.hpp>
#include <Unreal/UObject.hpp>
#include <Unreal/UObjectGlobals.hpp>
#include <Unreal/CoreUObject/UObject/Class.hpp>
#include <Unreal/CoreUObject/UObject/UnrealType.hpp>
#include <Unreal/Core/Containers/UnrealString.hpp>

using namespace RC;
using namespace RC::Unreal;

namespace
{
int g_tick_ms = 200;
int g_grace_ms = 8000;
int g_restart_grace_ms = 3000;
int g_recovery_ms = 30000;
int g_heartbeat_ms = 1000;
int g_threat_start_min = 2;
int g_threat_keep_min = 1;
int g_incoming_damage_ms = 4000;
int g_outgoing_damage_ms = 4000;
uintptr_t g_sleep_memory_offset = 0;

bool g_use_threat = true;
bool g_use_focus = false;
bool g_use_incoming_damage = true;
bool g_use_outgoing_damage = true;
bool g_use_stealth_noise_indicator = true;
bool g_passout_pause_during_ui = true;
bool g_hide_hud_during_passout = true;
bool g_verbose = false;
bool g_log_state = false;
bool g_track_player_effects = false;
bool g_log_player_effects = false;
bool g_use_memory_sleep = false;
bool g_log_sleep_changes = false;

double g_bonus_pct = 10.0;
double g_bucket_step = 5.0;
double g_passout_threshold_pct = 95.0;
double g_passout_reset_pct = 20.0;
double g_sleep_memory_scale = 1.0;

std::wstring g_pause_sid = L"CombatSleepinessPause";
std::wstring g_reset_sid = L"CombatSleepinessReset";
std::wstring g_set_prefix = L"CombatSleepinessSet";
std::wstring g_recover_prefix = L"CombatSleepinessRecover";
std::wstring g_passout_composite_sid = L"PassoutComposite";
std::wstring g_passout_knockdown_sid = L"PassoutKnockdownPlayerOnly";
std::wstring g_passout_knockdown_up_sid = L"PassoutKnockdown_UP_PlayerOnly";
std::wstring g_passout_postprocess_sid = L"SleepinessPassoutPostProcess";
std::wstring g_passout_reset_sid = L"QuickOverSleepinessReset";
std::wstring g_passout_health_sid = L"PassoutHealthDecrease";
std::wstring g_passout_drag_weapon_sid;
std::wstring g_sleep_memory_module = L"Stalker2-Win64-Shipping.exe";

UObject* g_hud = nullptr;
UObject* g_debug_hud = nullptr;
UObject* g_pc = nullptr;
UObject* g_player = nullptr;
UObject* g_ga = nullptr;
UObject* g_med = nullptr;
UObject* g_ui_mgr = nullptr;
UObject* g_mgr_root = nullptr;
UObject* g_mgr_rk = nullptr;
UObject* g_mgr_mh = nullptr;
UObject* g_mgr_vc = nullptr;
UObject* g_mgr_dc = nullptr;
UObject* g_last_tick_player = nullptr;

UFunction* g_fn_restart = nullptr;
UFunction* g_fn_apply = nullptr;
UFunction* g_fn_remove = nullptr;
UFunction* g_fn_focus = nullptr;
UFunction* g_fn_img_mid = nullptr;
UFunction* g_fn_mid_scalar = nullptr;
UFunction* g_fn_show_stat_progress = nullptr;
UFunction* g_fn_show_hud = nullptr;
UFunction* g_fn_run_engine_cmd = nullptr;
UFunction* g_fn_toggle_detailed_vitals = nullptr;
UFunction* g_fn_draw_player_stats = nullptr;
UFunction* g_fn_list_player_effects = nullptr;
UFunction* g_fn_comp_apply = nullptr;
UFunction* g_fn_comp_remove = nullptr;
UFunction* g_fn_receive_any_damage = nullptr;
UFunction* g_fn_receive_instigated_any_damage = nullptr;

uint64_t g_suspend_until = 0;
uint64_t g_last_poll = 0;
uint64_t g_last_combat = 0;
uint64_t g_last_hud_scan = 0;
uint64_t g_last_debug_hud_scan = 0;
uint64_t g_last_player_scan = 0;
uint64_t g_last_ui_mgr_scan = 0;
uint64_t g_last_mgr_vc_scan = 0;
uint64_t g_last_mgr_root_scan = 0;
uint64_t g_last_heartbeat = 0;
uint64_t g_last_damage_in = 0;
uint64_t g_last_damage_out = 0;
uint64_t g_passout_pending_since = 0;
uint64_t g_passout_triggered_at = 0;
uint64_t g_passout_knockdown_release_at = 0;
uint64_t g_passout_wakeup_clear_at = 0;
uint64_t g_passout_hud_show_at = 0;
uint64_t g_passout_drag_weapon_at = 0;
uint64_t g_last_hud_hide_enforce_at = 0;
uint64_t g_last_passout_update_at = 0;
uint64_t g_last_sleep_debug_dump = 0;
uint64_t g_last_debug_bootstrap = 0;
uint64_t g_last_runtime_sleep_dump = 0;

bool g_pause_on = false;
bool g_last_raw = false;
bool g_last_pause = false;
bool g_last_hud_red = false;
bool g_need_resync = true;
bool g_snapshot_ok = false;
bool g_passout_pending = false;
bool g_passout_triggered = false;
bool g_passout_wakeup_sent = false;
bool g_passout_drag_weapon_sent = false;
bool g_hud_hidden_by_passout = false;
bool g_debug_show_progress_requested = false;
bool g_debug_draw_stats_requested = false;
bool g_debug_sleep_vital_requested = false;
bool g_debug_list_effects_requested = false;
bool g_last_sleep_change_ok = false;

double g_snapshot_pct = 0.0;
double g_combat_sleep_debt_pct = 0.0;
double g_last_sleep_change_pct = 0.0;
int g_passout_delay_ms = 30000;
int g_passout_active_ms = 25000;
int g_passout_effect_delay_ms = 2000;
int g_passout_knockdown_hold_ms = 1500;
int g_passout_wakeup_at_ms = 24500;
int g_passout_wakeup_hold_ms = 1500;
int g_passout_hud_show_delay_ms = 3500;
int g_passout_drag_weapon_delay_ms = 5000;

bool g_recovery_active = false;
uint64_t g_recovery_started_at = 0;
double g_recovery_base_pct = 0.0;
double g_recovery_target_pct = 0.0;
int g_recovery_base_bucket = 0;
int g_recovery_target_bucket = 0;
int g_recovery_last_bucket = -1;
int g_recovery_step_count = 0;

int g_last_threat = -999;
bool g_last_focus = false;
int g_last_hud_visibility = -999;
bool g_last_ui_pause = false;
std::wstring g_last_focus_name;
std::wstring g_last_ui_pause_view;

bool g_enable_stat_progress_bootstrap = true;
bool g_enable_draw_player_stats_bootstrap = false;
bool g_enable_sleep_vital_bootstrap = false;
bool g_use_debug_hud_sleep_source = false;
bool g_enable_effects_dump_bootstrap = true;
bool g_enable_mid_scalar_probe = false;
bool g_mid_scalar_probe_disabled_for_session = false;
int g_debug_bootstrap_ms = 2000;
std::unordered_map<std::wstring, int> g_player_effect_refcounts;

struct TArrayHeader { void* Data; int32 Num; int32 Max; };
struct PEffect { FString EffectPrototypeSID; };
struct PFocus { UObject* Obj; UObject* ReturnValue; };
struct PImageMID { UObject* ReturnValue; };
struct PMidScalar { FName ParameterName; float ReturnValue; };
struct PBool { bool bEnabled; };
struct PShowHUD { bool bIsShow; };
struct PRunCmd { FString Command; };
struct PVitalType { int32 VitalType; };
struct PDrawPlayerStats { float ValueFontXSizeCoef; float ValueFontYSizeCoef; };
struct PTargetObj { UObject* TargetObject; };
struct PReceiveAnyDamage { float Damage; UObject* DamageType; UObject* InstigatedBy; UObject* DamageCauser; };
struct PReceiveInstigatedAnyDamage { float Damage; UObject* DamageType; UObject* DamagedActor; UObject* DamageCauser; };
struct CombatProbe
{
    int threat = -1;
    int hud_visibility = -1;
    bool focus = false;
    bool recent_incoming_damage = false;
    bool recent_outgoing_damage = false;
    bool hud_red = false;
    double hud_r = 0.0;
    double hud_g = 0.0;
    double hud_b = 0.0;
    double hud_a = 0.0;
    std::wstring focus_name;
};

bool read_numeric_property(FProperty* prop, UObject* owner, double& out);
bool read_numeric_property_from_container(FProperty* prop, void* owner, double& out);
FProperty* struct_field(UStruct* owner, const wchar_t* name);
void* struct_value_ptr(FProperty* prop, void* owner);
void prime_console_managers();

void reset_transient_runtime_views()
{
    g_hud = nullptr;
    g_debug_hud = nullptr;
    g_ui_mgr = nullptr;
    g_mgr_root = nullptr;
    g_mgr_rk = nullptr;
    g_mgr_mh = nullptr;
    g_mgr_vc = nullptr;
    g_mgr_dc = nullptr;
    g_last_hud_scan = 0;
    g_last_debug_hud_scan = 0;
    g_last_ui_mgr_scan = 0;
    g_last_mgr_vc_scan = 0;
    g_last_mgr_root_scan = 0;
    g_last_hud_hide_enforce_at = 0;
    g_last_hud_visibility = -999;
    g_last_hud_red = false;
}

template <typename... A> void vlog(const TCHAR* f, A&&... a) { if (g_verbose) Output::send<LogLevel::Verbose>(f, std::forward<A>(a)...); }
template <typename... A> void slog(const TCHAR* f, A&&... a) { if (g_log_state) Output::send<LogLevel::Verbose>(f, std::forward<A>(a)...); }
template <typename... A> void elog(const TCHAR* f, A&&... a) { if (g_log_player_effects) Output::send<LogLevel::Verbose>(f, std::forward<A>(a)...); }

uint64_t now_ms() { return GetTickCount64(); }
double clamp_pct(double v) { return std::max(0.0, std::min(100.0, v)); }
int bucket_step_int() { return std::max(5, (int)std::round(g_bucket_step)); }

bool can_query_uobject(UObject* o)
{
    if (!o) return false;

    const auto ptr = reinterpret_cast<uintptr_t>(o);
    if (ptr < 0x10000 || ptr == std::numeric_limits<uintptr_t>::max()) return false;

    __try
    {
        auto* cls = o->GetClassPrivate();
        if (!cls) return false;
        (void)o->GetNamePrivate();
        (void)cls->GetNamePrivate();
        if (auto* outer = o->GetOuterPrivate())
        {
            (void)outer->GetClassPrivate();
            (void)outer->GetNamePrivate();
        }
        return true;
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        return false;
    }
}

std::wstring safe_fullname(UObject* o)
{
    if (!can_query_uobject(o)) return L"";
    try { return o->GetFullName(); } catch (...) { return L""; }
}

UObject* prop(UObject* o, const wchar_t* n)
{
    if (!can_query_uobject(o)) return nullptr;
    __try
    {
        auto* p = o->GetValuePtrByPropertyNameInChain<UObject*>(n);
        auto* out = p ? *p : nullptr;
        return can_query_uobject(out) ? out : nullptr;
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        return nullptr;
    }
}

bool num_prop(UObject* o, const wchar_t* n, double& out)
{
    if (!can_query_uobject(o)) return false;
    __try
    {
        if (auto* v = o->GetValuePtrByPropertyNameInChain<float>(n)) { out = *v; return true; }
        if (auto* v = o->GetValuePtrByPropertyNameInChain<double>(n)) { out = *v; return true; }
        if (auto* v = o->GetValuePtrByPropertyNameInChain<int32>(n)) { out = (double)*v; return true; }
        if (auto* v = o->GetValuePtrByPropertyNameInChain<uint8>(n)) { out = (double)*v; return true; }
        if (auto* prop = o->GetPropertyByNameInChain(n))
        {
            return read_numeric_property(prop, o, out);
        }
    }
    __except (EXCEPTION_EXECUTE_HANDLER) {}
    return false;
}

FText* text_prop_ptr(UObject* o, const wchar_t* n)
{
    if (!can_query_uobject(o)) return nullptr;
    __try
    {
        return o->GetValuePtrByPropertyNameInChain<FText>(n);
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        return nullptr;
    }
}

bool text_prop(UObject* o, const wchar_t* n, std::wstring& out)
{
    auto* v = text_prop_ptr(o, n);
    if (!v) return false;
    try
    {
        out = v->ToString();
        return !out.empty();
    }
    catch (...)
    {
        return false;
    }
}

std::wstring lower_copy(std::wstring s)
{
    std::transform(s.begin(), s.end(), s.begin(), [](wchar_t c) { return (wchar_t)std::towlower(c); });
    return s;
}

bool contains_token(const std::wstring& haystack, const std::wstring& needle)
{
    return haystack.find(needle) != std::wstring::npos;
}

std::wstring wstr_from_fstring(const FString& value)
{
    try
    {
        const auto& chars = value.GetCharArray();
        if (chars.Num() > 0 && chars.GetData())
        {
            return std::wstring(chars.GetData());
        }
    }
    catch (...) {}
    return L"";
}

bool same_player(UObject* obj)
{
    if (!can_query_uobject(obj)) return false;
    if (g_player && can_query_uobject(g_player) && obj == g_player) return true;
    if (!g_pc || !can_query_uobject(g_pc)) return false;
    if (auto* p = prop(g_pc, L"AcknowledgedPawn")) if (p == obj) return true;
    if (auto* p = prop(g_pc, L"Pawn")) if (p == obj) return true;
    if (auto* p = prop(g_pc, L"Character")) if (p == obj) return true;
    return false;
}

std::wstring joined_player_effects()
{
    std::vector<std::wstring> items;
    items.reserve(g_player_effect_refcounts.size());

    for (const auto& [sid, count] : g_player_effect_refcounts)
    {
        if (sid.empty() || count <= 0) continue;
        if (count > 1)
        {
            items.push_back(sid + L" x" + std::to_wstring(count));
        }
        else
        {
            items.push_back(sid);
        }
    }

    if (items.empty()) return L"(none)";

    std::sort(items.begin(), items.end());
    std::wstring out;
    for (size_t i = 0; i < items.size(); ++i)
    {
        if (i) out += L", ";
        out += items[i];
    }
    return out;
}

void log_player_effects_snapshot(const std::wstring& reason)
{
    if (!g_log_player_effects) return;

    int active = 0;
    for (const auto& [_, count] : g_player_effect_refcounts)
    {
        if (count > 0) ++active;
    }

    elog(STR("[SCS/EFX] current reason={} count={} effects={}\n"),
        reason.empty() ? L"(n/a)" : reason,
        active,
        joined_player_effects());
}

bool track_player_effect_sid(const std::wstring& sid, bool add, const std::wstring& source, bool emit_snapshot = true)
{
    if (!g_track_player_effects || sid.empty()) return false;

    bool changed = false;
    int new_count = 0;

    auto it = g_player_effect_refcounts.find(sid);
    if (add)
    {
        if (it == g_player_effect_refcounts.end())
        {
            g_player_effect_refcounts.emplace(sid, 1);
            new_count = 1;
        }
        else
        {
            new_count = ++it->second;
        }
        changed = true;
    }
    else if (it != g_player_effect_refcounts.end())
    {
        if (it->second > 1)
        {
            new_count = --it->second;
        }
        else
        {
            g_player_effect_refcounts.erase(it);
            new_count = 0;
        }
        changed = true;
    }

    if (!changed)
    {
        return false;
    }

    elog(STR("[SCS/EFX] {} sid={} source={} count={}\n"),
        add ? STR("add") : STR("remove"),
        sid,
        source.empty() ? L"(n/a)" : source,
        new_count);

    if (emit_snapshot)
    {
        log_player_effects_snapshot(add ? L"add" : L"remove");
    }
    return true;
}

void clear_player_effects()
{
    g_player_effect_refcounts.clear();
}

void track_apply_effect_component(UObject* component, void* params, bool add)
{
    if (!g_track_player_effects || !can_query_uobject(component) || !params) return;

    auto* p = static_cast<PTargetObj*>(params);
    if (!p || !same_player(p->TargetObject)) return;

    auto* arr = component->GetValuePtrByPropertyNameInChain<TArrayHeader>(L"EffectsToApply");
    if (!arr || !arr->Data || arr->Num <= 0 || arr->Num > 128) return;

    size_t stride = 0x40;
    try
    {
        if (auto* prop = component->GetPropertyByNameInChain(L"EffectsToApply"))
        {
            if (auto* as_array = CastField<FArrayProperty>(prop))
            {
                if (auto* inner = as_array->GetInner())
                {
                    const auto inner_size = (size_t)inner->GetSize();
                    if (inner_size >= sizeof(FString) && inner_size <= 0x400)
                    {
                        stride = inner_size;
                    }
                }
            }
        }
    }
    catch (...) {}

    bool any = false;
    auto* data = reinterpret_cast<uint8_t*>(arr->Data);
    const auto source = safe_fullname(component);

    for (int i = 0; i < arr->Num; ++i)
    {
        auto* sid_value = reinterpret_cast<FString*>(data + (i * stride));
        if (!sid_value) continue;
        const auto sid = wstr_from_fstring(*sid_value);
        if (sid.empty()) continue;
        any = track_player_effect_sid(sid, add, source, false) || any;
    }

    if (any)
    {
        log_player_effects_snapshot(add ? L"component_add" : L"component_remove");
    }
}

bool consider_pct_candidate(double candidate, bool& have_any, double& best)
{
    const bool positive = candidate > 0.001;
    if (positive)
    {
        best = candidate;
        have_any = true;
        return true;
    }
    if (!have_any)
    {
        best = candidate;
        have_any = true;
    }
    return false;
}

std::wstring dll_dir()
{
    HMODULE hm = nullptr;
    if (!GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT, (LPCWSTR)&dll_dir, &hm)) return L"";
    wchar_t b[MAX_PATH]{};
    GetModuleFileNameW(hm, b, MAX_PATH);
    std::wstring p(b);
    auto i = p.find_last_of(L"\\/");
    return i == std::wstring::npos ? L"" : p.substr(0, i);
}

std::wstring ini_path() { return dll_dir() + L"\\SoporCombatSleep.ini"; }

std::wstring ini_s(const std::wstring& s, const std::wstring& k, const std::wstring& d)
{
    wchar_t o[1024]{};
    auto p = ini_path();
    GetPrivateProfileStringW(s.c_str(), k.c_str(), d.c_str(), o, 1024, p.c_str());
    return o;
}

int ini_i(const std::wstring& s, const std::wstring& k, int d)
{
    auto p = ini_path();
    return (int)GetPrivateProfileIntW(s.c_str(), k.c_str(), d, p.c_str());
}

double ini_d(const std::wstring& s, const std::wstring& k, double d)
{
    auto v = ini_s(s, k, L"");
    if (v.empty()) return d;
    wchar_t* e = nullptr;
    double r = wcstod(v.c_str(), &e);
    return e == v.c_str() ? d : r;
}

uintptr_t ini_uptr(const std::wstring& s, const std::wstring& k, uintptr_t d)
{
    auto v = ini_s(s, k, L"");
    if (v.empty()) return d;
    wchar_t* e = nullptr;
    const auto r = wcstoull(v.c_str(), &e, 0);
    return e == v.c_str() ? d : (uintptr_t)r;
}

bool effect_call(const std::wstring& sid, bool apply);

int bucket_from_percent(double pct)
{
    double snapped = std::round(clamp_pct(pct) / g_bucket_step) * g_bucket_step;
    return std::max(0, std::min(100, (int)std::round(snapped)));
}

std::wstring set_sid_for_bucket(int bucket)
{
    wchar_t b[64]{};
    swprintf_s(b, L"%ls%02d", g_set_prefix.c_str(), bucket);
    return b;
}

std::wstring recover_sid_for_bucket(int bucket)
{
    wchar_t b[64]{};
    swprintf_s(b, L"%ls%02d", g_recover_prefix.c_str(), bucket);
    return b;
}

void clear_combat_sleepiness_effects()
{
    if (!g_reset_sid.empty())
    {
        effect_call(g_reset_sid, false);
    }

    for (int bucket = 5; bucket <= 100; bucket += 5)
    {
        effect_call(set_sid_for_bucket(bucket), false);
    }
}

void load_cfg()
{
    g_pause_sid = ini_s(L"Effects", L"PauseEffectSID", L"CombatSleepinessPause");
    g_reset_sid = ini_s(L"Effects", L"ResetEffectSID", L"CombatSleepinessReset");
    g_set_prefix = ini_s(L"Effects", L"SetEffectPrefix", L"CombatSleepinessSet");
    g_recover_prefix = ini_s(L"Effects", L"RecoverEffectPrefix", L"CombatSleepinessRecover");
    g_passout_composite_sid = ini_s(L"Effects", L"PassoutCompositeSID", L"PassoutComposite");
    g_passout_knockdown_sid = ini_s(L"Effects", L"PassoutKnockdownSID", L"PassoutKnockdownPlayerOnly");
    g_passout_knockdown_up_sid = ini_s(L"Effects", L"PassoutKnockdownUpSID", L"PassoutKnockdown_UP_PlayerOnly");
    g_passout_postprocess_sid = ini_s(L"Effects", L"PassoutPostProcessSID", L"SleepinessPassoutPostProcess");
    g_passout_reset_sid = ini_s(L"Effects", L"PassoutResetSID", L"QuickOverSleepinessReset");
    g_passout_health_sid = ini_s(L"Effects", L"PassoutHealthSID", L"PassoutHealthDecrease");
    g_passout_drag_weapon_sid = ini_s(L"Effects", L"PassoutDragWeaponSID", L"");

    g_bonus_pct = std::max(0.0, ini_d(L"Sleepiness", L"PostCombatBonusPercent", 10.0));
    g_bucket_step = std::max(5.0, 5.0 * std::round(std::max(5.0, ini_d(L"Sleepiness", L"BucketStepPercent", 5.0)) / 5.0));
    g_passout_threshold_pct = clamp_pct(ini_d(L"Passout", L"ThresholdPercent", 95.0));
    g_passout_reset_pct = clamp_pct(ini_d(L"Passout", L"ResetPercent", 20.0));
    g_passout_pause_during_ui = ini_i(L"Passout", L"PauseDuringUI", 1) != 0;
    g_hide_hud_during_passout = ini_i(L"Passout", L"HideHUD", 1) != 0;

    g_tick_ms = std::max(100, ini_i(L"Combat", L"TickIntervalMs", 1000));
    g_grace_ms = std::max(0, ini_i(L"Combat", L"CombatGraceMs", 8000));
    g_restart_grace_ms = std::max(0, ini_i(L"Combat", L"PostRestartGraceMs", 3000));
    g_recovery_ms = std::max(1000, ini_i(L"Combat", L"RecoveryDurationMs", 30000));
    g_passout_delay_ms = std::max(1000, ini_i(L"Passout", L"DelayMs", 30000));
    g_passout_active_ms = std::max(1000, ini_i(L"Passout", L"ActiveMs", 25000));
    g_passout_effect_delay_ms = std::max(0, ini_i(L"Passout", L"EffectDelayMs", 2000));
    g_passout_knockdown_hold_ms = std::max(0, ini_i(L"Passout", L"KnockdownHoldMs", 1500));
    g_passout_wakeup_at_ms = std::max(0, ini_i(L"Passout", L"WakeupKnockdownAtMs", 24500));
    g_passout_wakeup_hold_ms = std::max(0, ini_i(L"Passout", L"WakeupKnockdownHoldMs", 1500));
    g_passout_hud_show_delay_ms = std::max(0, ini_i(L"Passout", L"HudShowDelayMs", 3500));
    g_passout_drag_weapon_delay_ms = std::max(0, ini_i(L"Passout", L"DragWeaponDelayMs", 5000));
    g_heartbeat_ms = std::max(0, ini_i(L"Debug", L"HeartbeatMs", 0));
    g_use_threat = ini_i(L"Combat", L"UseThreatIndicator", 0) != 0;
    g_use_stealth_noise_indicator = ini_i(L"Combat", L"UseStealthNoiseIndicator", 1) != 0;
    g_use_focus = ini_i(L"Combat", L"UseFocusedEnemyFallback", 0) != 0;
    g_use_incoming_damage = ini_i(L"Combat", L"UseIncomingDamage", 1) != 0;
    g_use_outgoing_damage = ini_i(L"Combat", L"UseOutgoingDamage", 1) != 0;
    g_threat_start_min = std::max(0, ini_i(L"Combat", L"ThreatStartMinPointers", 2));
    g_threat_keep_min = std::max(0, ini_i(L"Combat", L"ThreatKeepMinPointers", 1));
    g_incoming_damage_ms = std::max(0, ini_i(L"Combat", L"IncomingDamageCombatMs", 4000));
    g_outgoing_damage_ms = std::max(0, ini_i(L"Combat", L"OutgoingDamageCombatMs", 4000));
    g_verbose = ini_i(L"Debug", L"Verbose", 0) != 0;
    g_log_state = ini_i(L"Debug", L"LogStateChanges", 0) != 0;
    g_track_player_effects = ini_i(L"EffectTracker", L"Enable", 0) != 0;
    g_log_player_effects = ini_i(L"EffectTracker", L"Log", 0) != 0;
    g_enable_stat_progress_bootstrap = ini_i(L"DebugUI", L"EnableShowStatProgress", 0) != 0;
    g_enable_draw_player_stats_bootstrap = ini_i(L"DebugUI", L"EnableDrawPlayerStats", 0) != 0;
    g_enable_sleep_vital_bootstrap = ini_i(L"DebugUI", L"EnableSleepVitalOverlay", 0) != 0;
    g_use_debug_hud_sleep_source = ini_i(L"DebugUI", L"UseDebugHudSleepSource", 0) != 0;
    g_enable_effects_dump_bootstrap = ini_i(L"DebugUI", L"DumpCurrentEffectsOnBootstrap", 0) != 0;
    g_enable_mid_scalar_probe = ini_i(L"DebugUI", L"EnableDynamicMaterialSleepProbe", 0) != 0;
    g_debug_bootstrap_ms = std::max(250, ini_i(L"DebugUI", L"BootstrapRetryMs", 2000));
    g_use_memory_sleep = ini_i(L"MemorySleep", L"Enable", 1) != 0;
    g_sleep_memory_module = ini_s(L"MemorySleep", L"Module", L"Stalker2-Win64-Shipping.exe");
    g_sleep_memory_offset = ini_uptr(L"MemorySleep", L"Offset", 0x7A41574);
    g_sleep_memory_scale = ini_d(L"MemorySleep", L"Scale", 1.0);
    g_log_sleep_changes = ini_i(L"MemorySleep", L"LogOnChange", 1) != 0;
}

void clear_recovery_state()
{
    g_recovery_active = false;
    g_recovery_started_at = 0;
    g_recovery_base_pct = 0.0;
    g_recovery_target_pct = 0.0;
    g_recovery_base_bucket = 0;
    g_recovery_target_bucket = 0;
    g_recovery_last_bucket = -1;
    g_recovery_step_count = 0;
}

void reset_runtime()
{
    g_hud = g_debug_hud = g_pc = g_player = g_ga = g_med = g_ui_mgr = g_mgr_root = g_mgr_rk = g_mgr_mh = g_mgr_vc = g_mgr_dc = nullptr;
    g_last_hud_scan = g_last_debug_hud_scan = g_last_ui_mgr_scan = g_last_mgr_vc_scan = g_last_mgr_root_scan = 0;
    g_last_hud_hide_enforce_at = 0;
    g_last_hud_visibility = -999;
    g_fn_restart = g_fn_apply = g_fn_remove = g_fn_focus = g_fn_img_mid = g_fn_mid_scalar = nullptr;
    g_fn_list_player_effects = nullptr;
    g_fn_comp_apply = g_fn_comp_remove = nullptr;
    g_fn_receive_any_damage = g_fn_receive_instigated_any_damage = nullptr;
    g_fn_show_stat_progress = g_fn_show_hud = g_fn_run_engine_cmd = g_fn_toggle_detailed_vitals = g_fn_draw_player_stats = nullptr;
    g_pause_on = false;
    g_last_raw = false;
    g_last_pause = false;
    g_last_hud_red = false;
    g_need_resync = true;
    g_snapshot_ok = false;
    g_snapshot_pct = 0.0;
    g_combat_sleep_debt_pct = 0.0;
    g_last_poll = 0;
    g_last_combat = 0;
    g_last_player_scan = 0;
    g_last_heartbeat = 0;
    g_last_damage_in = 0;
    g_last_damage_out = 0;
    g_last_sleep_debug_dump = 0;
    g_last_debug_bootstrap = 0;
    g_last_runtime_sleep_dump = 0;
    g_last_threat = -999;
    g_last_focus = false;
    g_last_ui_pause = false;
    g_last_focus_name.clear();
    g_last_ui_pause_view.clear();
    g_passout_pending_since = 0;
    g_passout_triggered_at = 0;
    g_passout_knockdown_release_at = 0;
    g_passout_wakeup_clear_at = 0;
    g_passout_hud_show_at = 0;
    g_passout_drag_weapon_at = 0;
    g_last_passout_update_at = 0;
    g_passout_pending = false;
    g_passout_triggered = false;
    g_passout_wakeup_sent = false;
    g_passout_drag_weapon_sent = g_passout_drag_weapon_sid.empty();
    g_hud_hidden_by_passout = false;
    g_debug_show_progress_requested = false;
    g_debug_draw_stats_requested = false;
    g_debug_sleep_vital_requested = false;
    g_debug_list_effects_requested = false;
    g_last_sleep_change_ok = false;
    g_last_sleep_change_pct = 0.0;
    g_mid_scalar_probe_disabled_for_session = false;
    clear_player_effects();
    clear_recovery_state();
}

UObject* cdo(const std::wstring& q)
{
    try { if (auto* c = UObjectGlobals::FindObject<UClass>(nullptr, q.c_str(), true)) return c->GetClassDefaultObject(); } catch (...) {}
    return nullptr;
}

void observe(UObject* o, int d = 0)
{
    if (!o || d > 4) return;
    auto f = safe_fullname(o);
    if (f.empty()) return;
    auto s = f.find(L" /");
    auto cls = s == std::wstring::npos ? f : f.substr(0, s);

    if (cls.find(L"PlayerController") != std::wstring::npos)
    {
        if (g_pc != o) vlog(STR("[SCS] Observe PlayerController {}\n"), f);
        g_pc = o;
        if (auto* p = prop(o, L"AcknowledgedPawn")) observe(p, d + 1);
        else if ((p = prop(o, L"Pawn"))) observe(p, d + 1);
        else if ((p = prop(o, L"Character"))) observe(p, d + 1);
    }

    if (cls.find(L"BP_Stalker2Character_C") != std::wstring::npos && f.find(L":PersistentLevel.BP_Stalker2Character_C_") != std::wstring::npos)
    {
        if (g_player != o) vlog(STR("[SCS] Observe Player {}\n"), f);
        g_player = o;
        if (auto* ga = prop(o, L"GAComponent")) observe(ga, d + 1);
        else if ((ga = prop(o, L"GAPlayerComponent"))) observe(ga, d + 1);
    }

    if (cls.find(L"GAPlayerComponent") != std::wstring::npos)
    {
        if (g_ga != o) vlog(STR("[SCS] Observe GA {}\n"), f);
        g_ga = o;
    }

    if (cls.find(L"CppMediator") != std::wstring::npos)
    {
        if (g_med != o) vlog(STR("[SCS] Observe Mediator {}\n"), f);
        g_med = o;
    }

    if (f.find(L"W_GameHUD_C ") != std::wstring::npos && f.find(L"/Engine/Transient.") != std::wstring::npos)
    {
        if (g_hud != o) vlog(STR("[SCS] Observe HUD {}\n"), f);
        g_hud = o;
    }

    if ((cls.find(L"DebugHUD") != std::wstring::npos || f.find(L"DebugHUD") != std::wstring::npos) && f.find(L"/Engine/Transient.") != std::wstring::npos)
    {
        if (g_debug_hud != o) vlog(STR("[SCS] Observe DebugHUD {}\n"), f);
        g_debug_hud = o;
    }

    if (auto* rk = prop(o, L"CustomConsoleManagerRK")) if (rk != o) observe(rk, d + 1);
    if (auto* mh = prop(o, L"CustomConsoleManagerMH")) if (mh != o) observe(mh, d + 1);
    if (auto* vc = prop(o, L"CustomConsoleManagerVC")) if (vc != o) observe(vc, d + 1);
    if (auto* dc = prop(o, L"CustomConsoleManagerDC")) if (dc != o) observe(dc, d + 1);

    if (cls.find(L"CustomConsoleManagerRK") != std::wstring::npos && f.find(L"/Engine/Transient.") != std::wstring::npos)
    {
        if (g_mgr_rk != o) vlog(STR("[SCS] Observe RK manager {}\n"), f);
        g_mgr_rk = o;
    }

    if (cls.find(L"CustomConsoleManagerMH") != std::wstring::npos && f.find(L"/Engine/Transient.") != std::wstring::npos)
    {
        if (g_mgr_mh != o) vlog(STR("[SCS] Observe MH manager {}\n"), f);
        g_mgr_mh = o;
    }

    if (cls.find(L"CustomConsoleManagerVC") != std::wstring::npos && f.find(L"/Engine/Transient.") != std::wstring::npos)
    {
        if (g_mgr_vc != o) vlog(STR("[SCS] Observe VC manager {}\n"), f);
        g_mgr_vc = o;
    }

    if (cls.find(L"CustomConsoleManagerDC") != std::wstring::npos && f.find(L"/Engine/Transient.") != std::wstring::npos)
    {
        if (g_mgr_dc != o) vlog(STR("[SCS] Observe DC manager {}\n"), f);
        g_mgr_dc = o;
    }
}

void sync_player_refs(UObject* player)
{
    if (!can_query_uobject(player)) return;
    g_player = player;

    if (!can_query_uobject(g_ga))
    {
        g_ga = nullptr;
        if (auto* ga = prop(player, L"GAComponent")) g_ga = ga;
        else if ((ga = prop(player, L"GAPlayerComponent"))) g_ga = ga;
    }
}

UObject* scan_obj(const wchar_t* a, const wchar_t* b)
{
    auto trailing_instance_id = [](const std::wstring& full) -> uint64_t
    {
        size_t end = full.size();
        while (end > 0 && iswdigit(full[end - 1])) --end;
        if (end == full.size()) return 0;
        size_t start = end;
        while (start > 0 && iswdigit(full[start - 1])) --start;
        return _wcstoui64(full.c_str() + start, nullptr, 10);
    };

    UObject* found = nullptr;
    uint64_t found_id = 0;
    UObjectGlobals::ForEachUObject(std::function<RC::LoopAction(UObject*, int32, int32)>([&](UObject* o, int32, int32) {
        auto f = safe_fullname(o);
        if (f.empty()) return RC::LoopAction::Continue;
        if (f.find(a) == std::wstring::npos || f.find(b) == std::wstring::npos) return RC::LoopAction::Continue;
        const auto id = trailing_instance_id(f);
        if (!found || id >= found_id)
        {
            found = o;
            found_id = id;
        }
        return RC::LoopAction::Continue;
    }));
    return found;
}

UObject* scan_view_by_widget_name(int32 widget_name, uint64_t& last_scan, UObject*& cache, const wchar_t* log_name, bool force_refresh = false)
{
    auto trailing_instance_id = [](const std::wstring& full) -> uint64_t
    {
        size_t end = full.size();
        while (end > 0 && iswdigit(full[end - 1])) --end;
        if (end == full.size()) return 0;
        size_t start = end;
        while (start > 0 && iswdigit(full[start - 1])) --start;
        return _wcstoui64(full.c_str() + start, nullptr, 10);
    };

    if (!force_refresh && can_query_uobject(cache)) return cache;

    const auto n = now_ms();
    if (last_scan && n - last_scan < 1500) return can_query_uobject(cache) ? cache : nullptr;
    last_scan = n;

    UObject* found = nullptr;
    uint64_t found_id = 0;
    UObjectGlobals::ForEachUObject(std::function<RC::LoopAction(UObject*, int32, int32)>([&](UObject* o, int32, int32) {
        const auto full = safe_fullname(o);
        if (full.empty()) return RC::LoopAction::Continue;
        if (full.find(L"/Engine/Transient.") == std::wstring::npos) return RC::LoopAction::Continue;

        double value = -1.0;
        if (!num_prop(o, L"WidgetName", value)) return RC::LoopAction::Continue;
        if ((int32)std::llround(value) != widget_name) return RC::LoopAction::Continue;

        const auto id = trailing_instance_id(full);
        if (!found || id >= found_id)
        {
            found = o;
            found_id = id;
        }
        return RC::LoopAction::Continue;
    }));

    if (found)
    {
        const bool changed = found != cache;
        cache = found;
        if (changed) vlog(STR("[SCS] Scan {} hit {}\n"), log_name, safe_fullname(found));
    }
    return cache;
}

UObject* player_obj()
{
    if (g_player)
    {
        if (can_query_uobject(g_player))
        {
            if (!can_query_uobject(g_ga)) sync_player_refs(g_player);
            return g_player;
        }
        g_player = nullptr;
    }

    if (g_pc)
    {
        if (!can_query_uobject(g_pc)) g_pc = nullptr;
    }

    if (g_pc)
    {
        if (auto* p = prop(g_pc, L"AcknowledgedPawn"))
        {
            sync_player_refs(p);
            return g_player;
        }
        if (auto* p = prop(g_pc, L"Pawn"))
        {
            sync_player_refs(p);
            return g_player;
        }
        if (auto* p = prop(g_pc, L"Character"))
        {
            sync_player_refs(p);
            return g_player;
        }
    }
    auto n = now_ms();
    if (g_last_player_scan && n - g_last_player_scan < 1500) return nullptr;
    g_last_player_scan = n;
    g_player = scan_obj(L"BP_Stalker2Character_C ", L":PersistentLevel.BP_Stalker2Character_C_");
    if (g_player)
    {
        sync_player_refs(g_player);
        vlog(STR("[SCS] Scan player hit {}\n"), safe_fullname(g_player));
    }
    return g_player;
}

UObject* hud_obj()
{
    if (can_query_uobject(g_hud)) return g_hud;
    g_hud = scan_view_by_widget_name(18, g_last_hud_scan, g_hud, L"HUD");
    if (!can_query_uobject(g_hud))
    {
        g_hud = scan_obj(L"W_GameHUD_C ", L"/Engine/Transient.");
        if (g_hud) vlog(STR("[SCS] Scan HUD hit {}\n"), safe_fullname(g_hud));
    }
    return can_query_uobject(g_hud) ? g_hud : nullptr;
}

UObject* debug_hud_obj()
{
    if (can_query_uobject(g_debug_hud)) return g_debug_hud;
    g_debug_hud = scan_view_by_widget_name(4, g_last_debug_hud_scan, g_debug_hud, L"DebugHUD");
    if (!can_query_uobject(g_debug_hud)) g_debug_hud = scan_obj(L"DebugHUD", L"/Engine/Transient.");
    return can_query_uobject(g_debug_hud) ? g_debug_hud : nullptr;
}

UObject* ui_mgr_obj()
{
    if (can_query_uobject(g_ui_mgr)) return g_ui_mgr;

    const auto n = now_ms();
    if (g_last_ui_mgr_scan && n - g_last_ui_mgr_scan < 5000) return nullptr;
    g_last_ui_mgr_scan = n;

    g_ui_mgr = scan_obj(L"UIManagerEx ", L"/Engine/Transient.");
    if (!can_query_uobject(g_ui_mgr)) g_ui_mgr = scan_obj(L"UIMainMenuManager ", L"/Engine/Transient.");
    if (can_query_uobject(g_ui_mgr)) vlog(STR("[SCS] Scan UI manager hit {}\n"), safe_fullname(g_ui_mgr));
    return can_query_uobject(g_ui_mgr) ? g_ui_mgr : nullptr;
}

bool ui_view_blocks_passout_name(const std::wstring& full)
{
    static const wchar_t* hits[] =
    {
        L"DialogueView",
        L"FastDialogueView",
        L"Inventory",
        L"PDAView",
        L"PauseGameView",
        L"PauseMenuMainView",
        L"SettingsView",
        L"TradeView",
        L"Upgrade",
        L"Loot",
        L"AttachSelector",
        L"ItemSelector",
        L"PopupView",
        L"SleepView",
        L"MainMenu",
        L"MenuSubView",
    };

    for (const auto* token : hits)
    {
        if (full.find(token) != std::wstring::npos) return true;
    }
    return false;
}

bool ui_open_views_array(UObject* ui, UObject*** data, int32* count)
{
    if (!can_query_uobject(ui) || !data || !count) return false;
    __try
    {
        auto* arr = ui->GetValuePtrByPropertyNameInChain<TArrayHeader>(L"OpenViews");
        if (!arr || !arr->Data || arr->Num <= 0 || arr->Num > 128) return false;
        *data = reinterpret_cast<UObject**>(arr->Data);
        *count = arr->Num;
        return true;
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        return false;
    }
}

bool ui_blocks_passout(std::wstring* hit_view = nullptr)
{
    if (!g_passout_pause_during_ui) return false;

    auto* ui = ui_mgr_obj();
    if (!can_query_uobject(ui)) return false;

    UObject** data = nullptr;
    int32 count = 0;
    if (!ui_open_views_array(ui, &data, &count)) return false;

    for (int32 i = 0; i < count; ++i)
    {
        auto* view = data[i];
        if (!can_query_uobject(view)) continue;
        const auto full = safe_fullname(view);
        if (full.empty() || !ui_view_blocks_passout_name(full)) continue;
        if (hit_view) *hit_view = full;
        return true;
    }

    return false;
}

UObject* mediator()
{
    if (can_query_uobject(g_med)) return g_med;
    g_med = UObjectGlobals::FindObject<UObject>(nullptr, STR("CppMediator /Script/Stalker2.Default__CppMediator"), true);
    if (can_query_uobject(g_med)) return g_med;
    const std::wstring qs[] = { L"Class /Script/Stalker2.CppMediator", L"/Script/Stalker2.CppMediator", L"Stalker2.CppMediator", L"CppMediator" };
    for (const auto& q : qs) if (auto* o = cdo(q)) if (can_query_uobject(o)) return g_med = o;
    return nullptr;
}

UObject* mgr(UObject*& cache, const wchar_t* prop_name, const std::vector<std::wstring>& objects, const std::vector<std::wstring>& classes)
{
    if (can_query_uobject(cache)) return cache;

    for (const auto& q : objects)
    {
        try
        {
            if (auto* o = UObjectGlobals::FindObject<UObject>(nullptr, q.c_str(), true))
            {
                if (can_query_uobject(o)) return cache = o;
            }
        }
        catch (...) {}
    }

    for (const auto& q : classes) if (auto* o = cdo(q)) if (can_query_uobject(o)) return cache = o;

    UObject* starts[] = { g_hud, g_pc, g_player, g_ga, g_med };
    for (auto* s : starts)
    {
        for (UObject* cur = s; cur;)
        {
            if (auto* o = prop(cur, prop_name)) if (can_query_uobject(o)) return cache = o;
            try { cur = cur->GetOuterPrivate(); } catch (...) { cur = nullptr; }
        }
    }
    return nullptr;
}

UObject* mgr_rk()
{
    return mgr(g_mgr_rk, L"CustomConsoleManagerRK",
        { L"CustomConsoleManagerRK /Script/Stalker2.Default__CustomConsoleManagerRK", L"/Script/Stalker2.Default__CustomConsoleManagerRK", L"Stalker2.Default__CustomConsoleManagerRK", L"Default__CustomConsoleManagerRK" },
        { L"/Script/Stalker2.CustomConsoleManagerRK", L"Class /Script/Stalker2.CustomConsoleManagerRK", L"Stalker2.CustomConsoleManagerRK", L"CustomConsoleManagerRK" });
}

UObject* mgr_mh()
{
    return mgr(g_mgr_mh, L"CustomConsoleManagerMH",
        { L"CustomConsoleManagerMH /Script/Stalker2.Default__CustomConsoleManagerMH", L"/Script/Stalker2.Default__CustomConsoleManagerMH", L"Stalker2.Default__CustomConsoleManagerMH", L"Default__CustomConsoleManagerMH" },
        { L"/Script/Stalker2.CustomConsoleManagerMH", L"Class /Script/Stalker2.CustomConsoleManagerMH", L"Stalker2.CustomConsoleManagerMH", L"CustomConsoleManagerMH" });
}

UObject* mgr_vc()
{
    if (can_query_uobject(g_mgr_vc)) return g_mgr_vc;
    return mgr(g_mgr_vc, L"CustomConsoleManagerVC",
        { L"CustomConsoleManagerVC /Script/Stalker2.Default__CustomConsoleManagerVC", L"/Script/Stalker2.Default__CustomConsoleManagerVC", L"Stalker2.Default__CustomConsoleManagerVC", L"Default__CustomConsoleManagerVC" },
        { L"/Script/Stalker2.CustomConsoleManagerVC", L"Class /Script/Stalker2.CustomConsoleManagerVC", L"Stalker2.CustomConsoleManagerVC", L"CustomConsoleManagerVC" });
}

UObject* mgr_dc()
{
    return mgr(g_mgr_dc, L"CustomConsoleManagerDC",
        { L"CustomConsoleManagerDC /Script/Stalker2.Default__CustomConsoleManagerDC", L"/Script/Stalker2.Default__CustomConsoleManagerDC", L"Stalker2.Default__CustomConsoleManagerDC", L"Default__CustomConsoleManagerDC" },
        { L"/Script/Stalker2.CustomConsoleManagerDC", L"Class /Script/Stalker2.CustomConsoleManagerDC", L"Stalker2.CustomConsoleManagerDC", L"CustomConsoleManagerDC" });
}

UObject* mgr_root()
{
    if (can_query_uobject(g_mgr_root)) return g_mgr_root;
    return mgr(g_mgr_root, L"CustomConsoleManager",
        { L"CustomConsoleManager /Script/Stalker2.Default__CustomConsoleManager", L"/Script/Stalker2.Default__CustomConsoleManager", L"Stalker2.Default__CustomConsoleManager", L"Default__CustomConsoleManager" },
        { L"/Script/Stalker2.CustomConsoleManager", L"Class /Script/Stalker2.CustomConsoleManager", L"Stalker2.CustomConsoleManager", L"CustomConsoleManager" });
}

UFunction* find_fn(UFunction*& cache, const std::vector<const TCHAR*>& qs)
{
    if (cache) return cache;
    for (auto* q : qs) if ((cache = UObjectGlobals::FindObject<UFunction>(nullptr, q, true))) break;
    return cache;
}

UFunction* fn_restart() { return find_fn(g_fn_restart, { STR("Function /Script/Engine.PlayerController:ClientRestart"), STR("/Script/Engine.PlayerController:ClientRestart") }); }
UFunction* fn_apply() { return find_fn(g_fn_apply, { STR("Function /Script/Stalker2.CustomConsoleManagerRK:XApplyEffectOnPlayer"), STR("/Script/Stalker2.CustomConsoleManagerRK:XApplyEffectOnPlayer"), STR("Function /Script/Stalker2.CustomConsoleManagerMH:XApplyEffectOnPlayer"), STR("/Script/Stalker2.CustomConsoleManagerMH:XApplyEffectOnPlayer") }); }
UFunction* fn_remove() { return find_fn(g_fn_remove, { STR("Function /Script/Stalker2.CustomConsoleManagerMH:XRemoveEffectFromPlayer"), STR("/Script/Stalker2.CustomConsoleManagerMH:XRemoveEffectFromPlayer"), STR("Function /Script/Stalker2.CustomConsoleManagerMH:XRemoveEffectOnPlayer"), STR("/Script/Stalker2.CustomConsoleManagerMH:XRemoveEffectOnPlayer"), STR("Function /Script/Stalker2.CustomConsoleManagerRK:XRemoveEffectFromPlayer"), STR("/Script/Stalker2.CustomConsoleManagerRK:XRemoveEffectFromPlayer") }); }
UFunction* fn_focus() { return find_fn(g_fn_focus, { STR("Function /Script/Stalker2.CppMediator:GetFocusedEnemy"), STR("/Script/Stalker2.CppMediator:GetFocusedEnemy") }); }
UFunction* fn_img_mid() { return find_fn(g_fn_img_mid, { STR("Function /Script/UMG.Image:GetDynamicMaterial"), STR("/Script/UMG.Image:GetDynamicMaterial") }); }
UFunction* fn_mid_scalar() { return find_fn(g_fn_mid_scalar, { STR("Function /Script/Engine.MaterialInstanceDynamic:K2_GetScalarParameterValue"), STR("/Script/Engine.MaterialInstanceDynamic:K2_GetScalarParameterValue") }); }
UFunction* fn_show_stat_progress() { return find_fn(g_fn_show_stat_progress, { STR("Function /Script/Stalker2.CustomConsoleManagerVC:XShowStatProgres"), STR("/Script/Stalker2.CustomConsoleManagerVC:XShowStatProgres") }); }
UFunction* fn_show_hud() { return find_fn(g_fn_show_hud, { STR("Function /Script/Stalker2.CustomConsoleManagerVC:XShowHUD"), STR("/Script/Stalker2.CustomConsoleManagerVC:XShowHUD") }); }
UFunction* fn_run_engine_cmd() { return find_fn(g_fn_run_engine_cmd, { STR("Function /Script/Stalker2.CustomConsoleManager:XRunEngineCommand"), STR("/Script/Stalker2.CustomConsoleManager:XRunEngineCommand") }); }
UFunction* fn_toggle_detailed_vitals() { return find_fn(g_fn_toggle_detailed_vitals, { STR("Function /Script/Stalker2.CustomConsoleManagerRK:XToggleDetailedVitalsStat"), STR("/Script/Stalker2.CustomConsoleManagerRK:XToggleDetailedVitalsStat") }); }
UFunction* fn_draw_player_stats() { return find_fn(g_fn_draw_player_stats, { STR("Function /Script/Stalker2.CustomConsoleManagerRK:XToggleDrawPlayerStats"), STR("/Script/Stalker2.CustomConsoleManagerRK:XToggleDrawPlayerStats") }); }
UFunction* fn_list_player_effects() { return find_fn(g_fn_list_player_effects, { STR("Function /Script/Stalker2.CustomConsoleManagerDC:XListPlayerCurrentEffects"), STR("/Script/Stalker2.CustomConsoleManagerDC:XListPlayerCurrentEffects") }); }
UFunction* fn_comp_apply() { return find_fn(g_fn_comp_apply, { STR("Function /Script/Stalker2.ApplyEffectComponent:ApplyEffects"), STR("/Script/Stalker2.ApplyEffectComponent:ApplyEffects") }); }
UFunction* fn_comp_remove() { return find_fn(g_fn_comp_remove, { STR("Function /Script/Stalker2.ApplyEffectComponent:RemoveEffects"), STR("/Script/Stalker2.ApplyEffectComponent:RemoveEffects") }); }
UFunction* fn_receive_any_damage() { return find_fn(g_fn_receive_any_damage, { STR("Function /Script/Engine.Actor:ReceiveAnyDamage"), STR("/Script/Engine.Actor:ReceiveAnyDamage") }); }
UFunction* fn_receive_instigated_any_damage() { return find_fn(g_fn_receive_instigated_any_damage, { STR("Function /Script/Engine.Controller:ReceiveInstigatedAnyDamage"), STR("/Script/Engine.Controller:ReceiveInstigatedAnyDamage") }); }

UObject* pick_mgr(UFunction* fn)
{
    auto f = safe_fullname(fn);
    if (f.find(L"CustomConsoleManagerMH") != std::wstring::npos) return mgr_mh();
    return mgr_rk();
}

bool guarded_process_event(UObject* obj, UFunction* fn, void* params)
{
    __try
    {
        obj->ProcessEvent(fn, params);
        return true;
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        return false;
    }
}

bool effect_call(const std::wstring& sid, bool apply)
{
    auto* fn = apply ? fn_apply() : fn_remove();
    auto* m = pick_mgr(fn);
    if (!fn || !m || sid.empty())
    {
        slog(STR("[SCS] Effect {} skipped sid={} fn={} mgr={}\n"),
            apply ? STR("apply") : STR("remove"), sid, safe_fullname(fn), safe_fullname(m));
        return false;
    }

    PEffect p{};
    p.EffectPrototypeSID = FString(sid.c_str());
    vlog(STR("[SCS] Effect {} sid={} fn={} mgr={}\n"),
        apply ? STR("apply") : STR("remove"), sid, safe_fullname(fn), safe_fullname(m));
    if (guarded_process_event(m, fn, &p))
    {
        vlog(STR("[SCS] Effect {} OK sid={}\n"), apply ? STR("apply") : STR("remove"), sid);
        return true;
    }
    slog(STR("[SCS] Effect {} FAILED sid={}\n"), apply ? STR("apply") : STR("remove"), sid);
    return false;
}

void show_hud(bool show, const TCHAR* reason)
{
    if (!g_hide_hud_during_passout) return;
    if (!can_query_uobject(g_mgr_vc) || !can_query_uobject(g_mgr_root))
    {
        prime_console_managers();
    }
    auto* mgr = mgr_vc();
    auto* fn = fn_show_hud();
    bool ok = false;
    if (mgr && fn)
    {
        PShowHUD p{};
        p.bIsShow = show;
        if (guarded_process_event(mgr, fn, &p))
        {
            ok = true;
            vlog(STR("[SCS] HUD {} reason={} mgr={}\n"), show ? STR("show") : STR("hide"), reason, safe_fullname(mgr));
        }
        else
        {
            slog(STR("[SCS] HUD {} FAILED reason={} mgr={}\n"), show ? STR("show") : STR("hide"), reason, safe_fullname(mgr));
        }
    }

    auto* root = mgr_root();
    auto* run = fn_run_engine_cmd();
    if (root && run)
    {
        const std::wstring cmd = show ? L"showhud 1" : L"showhud 0";
        PRunCmd cmd_p{};
        cmd_p.Command = FString(cmd.c_str());
        if (guarded_process_event(root, run, &cmd_p))
        {
            ok = true;
            vlog(STR("[SCS] HUD engine command={} reason={} mgr={}\n"), cmd, reason, safe_fullname(root));
        }
    }

    if (!ok)
    {
        slog(STR("[SCS] HUD fallback FAILED reason={}\n"), reason);
    }
}

void prime_console_managers()
{
    const auto n = now_ms();

    if (!can_query_uobject(g_mgr_vc) && (!g_last_mgr_vc_scan || n - g_last_mgr_vc_scan >= 5000))
    {
        g_last_mgr_vc_scan = n;
        if (auto* mgr = scan_obj(L"CustomConsoleManagerVC_", L"/Engine/Transient."))
        {
            g_mgr_vc = mgr;
            vlog(STR("[SCS] Prime VC manager {}\n"), safe_fullname(mgr));
        }
    }

    if (!can_query_uobject(g_mgr_root) && (!g_last_mgr_root_scan || n - g_last_mgr_root_scan >= 5000))
    {
        g_last_mgr_root_scan = n;
        if (auto* mgr = scan_obj(L"CustomConsoleManager_", L"/Engine/Transient."))
        {
            g_mgr_root = mgr;
            vlog(STR("[SCS] Prime root manager {}\n"), safe_fullname(mgr));
        }
    }
}

void maybe_bootstrap_debug_ui()
{
    if (!g_enable_stat_progress_bootstrap
        && !g_enable_draw_player_stats_bootstrap
        && !g_enable_sleep_vital_bootstrap
        && !g_enable_effects_dump_bootstrap)
    {
        return;
    }

    prime_console_managers();

    const auto n = now_ms();
    if (g_last_debug_bootstrap && n - g_last_debug_bootstrap < (uint64_t)g_debug_bootstrap_ms) return;
    g_last_debug_bootstrap = n;

    if (g_enable_stat_progress_bootstrap && !g_debug_show_progress_requested)
    {
        auto* mgr = mgr_vc();
        auto* fn = fn_show_stat_progress();
        if (mgr && fn)
        {
            PBool p{};
            p.bEnabled = true;
            if (guarded_process_event(mgr, fn, &p))
            {
                g_debug_show_progress_requested = true;
                slog(STR("[SCS] DebugUI enabled stat progress via VC manager={}\n"), safe_fullname(mgr));
            }
            else
            {
                slog(STR("[SCS] DebugUI failed enabling stat progress manager={}\n"), safe_fullname(mgr));
            }
        }
    }

    if (g_enable_draw_player_stats_bootstrap && !g_debug_draw_stats_requested)
    {
        auto* mgr = mgr_rk();
        auto* fn = fn_draw_player_stats();
        if (mgr && fn)
        {
            PDrawPlayerStats p{};
            p.ValueFontXSizeCoef = 1.0f;
            p.ValueFontYSizeCoef = 1.0f;
            if (guarded_process_event(mgr, fn, &p))
            {
                g_debug_draw_stats_requested = true;
                slog(STR("[SCS] DebugUI toggled draw player stats via RK manager={}\n"), safe_fullname(mgr));
            }
            else
            {
                slog(STR("[SCS] DebugUI failed toggling draw player stats manager={}\n"), safe_fullname(mgr));
            }
        }
    }

    if (g_enable_sleep_vital_bootstrap && !g_debug_sleep_vital_requested)
    {
        auto* mgr = mgr_rk();
        auto* fn = fn_toggle_detailed_vitals();
        if (mgr && fn)
        {
            PVitalType p{};
            p.VitalType = 5;
            if (guarded_process_event(mgr, fn, &p))
            {
                g_debug_sleep_vital_requested = true;
                slog(STR("[SCS] DebugUI toggled detailed sleep vital via RK manager={}\n"), safe_fullname(mgr));
            }
            else
            {
                slog(STR("[SCS] DebugUI failed toggling detailed sleep vital manager={}\n"), safe_fullname(mgr));
            }
        }
    }

    if (g_enable_effects_dump_bootstrap && !g_debug_list_effects_requested)
    {
        auto* mgr = mgr_dc();
        auto* fn = fn_list_player_effects();
        if (mgr && fn)
        {
            if (guarded_process_event(mgr, fn, nullptr))
            {
                g_debug_list_effects_requested = true;
                slog(STR("[SCS] DebugUI listed current player effects via DC manager={}\n"), safe_fullname(mgr));
            }
            else
            {
                slog(STR("[SCS] DebugUI failed listing current player effects manager={}\n"), safe_fullname(mgr));
            }
        }
    }
}

UObject* focused_enemy(UObject* player)
{
    auto* fn = fn_focus();
    auto* m = mediator();
    if (!fn || !m || !player) return nullptr;
    if (!can_query_uobject(m) || !can_query_uobject(player)) return nullptr;
    PFocus p{};
    p.Obj = player;
    p.ReturnValue = nullptr;
    if (guarded_process_event(m, fn, &p))
    {
        return p.ReturnValue;
    }
    slog(STR("[SCS] Focus fallback crashed, disabling UseFocusedEnemyFallback for this session\n"));
    g_use_focus = false;
    return nullptr;
}

int threat_count()
{
    if (!g_use_threat) return -1;
    auto* h = hud_obj();
    if (!h) return -1;
    auto* t = prop(h, L"ThreatIndicator");
    if (!can_query_uobject(t)) return -1;
    try
    {
        auto* a = t->GetValuePtrByPropertyNameInChain<TArrayHeader>(L"ActiveThreatPointers");
        return (!a || a->Num < 0 || a->Num > 512) ? 0 : a->Num;
    }
    catch (...)
    {
        return -1;
    }
}

bool stealth_noise_indicator_red(double& r, double& g, double& b, double& a, int& visibility)
{
    auto is_red = [](double rr, double gg, double bb) -> bool
    {
        return rr >= 0.20 && gg <= 0.10 && bb <= 0.10 && rr >= gg * 2.5 && rr >= bb * 2.5;
    };

    if (!g_use_stealth_noise_indicator) return false;

    auto* h = hud_obj();
    if (!h) return false;

    auto* compass = prop(h, L"CompassWidget");
    if (!compass) return false;

    auto* indicator = prop(compass, L"StealthNoiseIndicator");
    if (!indicator) return false;

    double visibility_raw = -1.0;
    auto* visibility_prop = indicator->GetPropertyByNameInChain(L"Visibility");
    if (!read_numeric_property(visibility_prop, indicator, visibility_raw)) return false;
    visibility = (int)std::llround(visibility_raw);
    const bool visibility_ok = visibility == 4;

    auto* brush_prop = indicator->GetPropertyByNameInChain(L"Brush");
    auto* brush_struct_prop = CastField<FStructProperty>(brush_prop);
    if (!brush_struct_prop) return false;
    auto* brush_value = struct_value_ptr(brush_struct_prop, indicator);
    if (!brush_value) return false;

    auto* brush_struct = static_cast<UStruct*>(ToRawPtr(brush_struct_prop->GetStruct()));
    if (!brush_struct) return false;
    auto* tint_prop = struct_field(brush_struct, L"TintColor");
    auto* tint_struct_prop = CastField<FStructProperty>(tint_prop);
    if (!tint_struct_prop) return false;
    auto* tint_value = struct_value_ptr(tint_struct_prop, brush_value);
    if (!tint_value) return false;

    auto* tint_struct = static_cast<UStruct*>(ToRawPtr(tint_struct_prop->GetStruct()));
    if (!tint_struct) return false;
    auto* color_prop = struct_field(tint_struct, L"SpecifiedColor");
    auto* color_struct_prop = CastField<FStructProperty>(color_prop);
    if (!color_struct_prop) return false;
    auto* color_value = struct_value_ptr(color_struct_prop, tint_value);
    if (!color_value) return false;

    auto* color_struct = static_cast<UStruct*>(ToRawPtr(color_struct_prop->GetStruct()));
    if (!color_struct) return false;
    auto* r_prop = struct_field(color_struct, L"R");
    auto* g_prop = struct_field(color_struct, L"G");
    auto* b_prop = struct_field(color_struct, L"B");
    auto* a_prop = struct_field(color_struct, L"A");
    if (!read_numeric_property_from_container(r_prop, color_value, r)) return false;
    if (!read_numeric_property_from_container(g_prop, color_value, g)) return false;
    if (!read_numeric_property_from_container(b_prop, color_value, b)) return false;
    if (!read_numeric_property_from_container(a_prop, color_value, a)) a = 1.0;

    double img_r = 1.0, img_g = 1.0, img_b = 1.0, img_a = 1.0;
    const bool img_ok =
        num_prop(indicator, L"ColorAndOpacity.R", img_r) &&
        num_prop(indicator, L"ColorAndOpacity.G", img_g) &&
        num_prop(indicator, L"ColorAndOpacity.B", img_b) &&
        num_prop(indicator, L"ColorAndOpacity.A", img_a);

    if (img_ok)
    {
        const bool img_non_default =
            std::fabs(img_r - 1.0) > 0.02 ||
            std::fabs(img_g - 1.0) > 0.02 ||
            std::fabs(img_b - 1.0) > 0.02 ||
            std::fabs(img_a - 1.0) > 0.02;

        if (img_non_default)
        {
            r = img_r;
            g = img_g;
            b = img_b;
            a = img_a;
            return visibility_ok && is_red(r, g, b);
        }
    }

    // LiveView sample during combat: roughly (0.314, 0.027, 0.027, 1.0).
    return visibility_ok && is_red(r, g, b);
}

CombatProbe probe_combat(UObject* player)
{
    CombatProbe p{};
    const auto n = now_ms();
    p.threat = threat_count();
    p.hud_red = stealth_noise_indicator_red(p.hud_r, p.hud_g, p.hud_b, p.hud_a, p.hud_visibility);
    p.recent_incoming_damage = g_use_incoming_damage && g_last_damage_in && n - g_last_damage_in < (uint64_t)g_incoming_damage_ms;
    p.recent_outgoing_damage = g_use_outgoing_damage && g_last_damage_out && n - g_last_damage_out < (uint64_t)g_outgoing_damage_ms;

    if (g_use_focus && player)
    {
        if (auto* e = focused_enemy(player))
        {
            p.focus_name = safe_fullname(e);
            p.focus = !p.focus_name.empty();
        }
    }

    if (p.threat != g_last_threat)
    {
        vlog(STR("[SCS] Threat pointers changed: {} -> {}\n"), g_last_threat, p.threat);
        g_last_threat = p.threat;
    }

    if (p.focus != g_last_focus || (p.focus && p.focus_name != g_last_focus_name))
    {
        vlog(STR("[SCS] Focus enemy changed: {} -> {} ({})\n"),
            g_last_focus ? 1 : 0, p.focus ? 1 : 0, p.focus ? p.focus_name : L"none");
        g_last_focus = p.focus;
        g_last_focus_name = p.focus_name;
    }

    if (p.hud_red != g_last_hud_red)
    {
        vlog(STR("[SCS] StealthNoiseIndicator red changed: {} -> {} rgba=({:.6f},{:.6f},{:.6f},{:.6f})\n"),
            g_last_hud_red ? 1 : 0, p.hud_red ? 1 : 0, p.hud_r, p.hud_g, p.hud_b, p.hud_a);
        g_last_hud_red = p.hud_red;
    }

    if (p.hud_visibility != g_last_hud_visibility)
    {
        vlog(STR("[SCS] StealthNoiseIndicator visibility changed: {} -> {}\n"),
            g_last_hud_visibility, p.hud_visibility);
        g_last_hud_visibility = p.hud_visibility;
    }

    return p;
}

bool raw_combat(const CombatProbe& probe)
{
    if (probe.recent_incoming_damage || probe.recent_outgoing_damage) return true;
    if (probe.hud_red) return true;
    if (probe.focus) return true;
    if (probe.threat < 0) return false;
    const int threat_min = g_last_pause ? g_threat_keep_min : g_threat_start_min;
    return probe.threat >= threat_min;
}

bool normalize_percent(double raw, double& out)
{
    if (raw < 0.0) return false;
    out = raw <= 1.0 ? raw * 100.0 : raw;
    if (out > 100.0 && out <= 1000.0) out /= 10.0;
    out = clamp_pct(out);
    return true;
}

bool parse_first_number(const std::wstring& text, double& out)
{
    if (text.empty()) return false;

    size_t i = 0;
    while (i < text.size())
    {
        const wchar_t c = text[i];
        if ((c >= L'0' && c <= L'9') || c == L'+' || c == L'-')
        {
            break;
        }
        ++i;
    }
    if (i >= text.size()) return false;

    size_t j = i;
    bool seen_digit = false;
    bool seen_sep = false;
    while (j < text.size())
    {
        const wchar_t c = text[j];
        if (c >= L'0' && c <= L'9')
        {
            seen_digit = true;
            ++j;
            continue;
        }
        if ((c == L'.' || c == L',') && !seen_sep)
        {
            seen_sep = true;
            ++j;
            continue;
        }
        break;
    }
    if (!seen_digit) return false;

    std::wstring token = text.substr(i, j - i);
    std::replace(token.begin(), token.end(), L',', L'.');
    wchar_t* end = nullptr;
    const double value = wcstod(token.c_str(), &end);
    if (end == token.c_str()) return false;
    out = value;
    return true;
}

bool read_numeric_property(FProperty* prop, UObject* owner, double& out)
{
    if (!prop || !owner) return false;
    const auto type = prop->GetClass().GetFName().ToString();

    try
    {
        if (type == STR("FloatProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<float>(owner)) { out = *v; return true; }
        }
        else if (type == STR("DoubleProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<double>(owner)) { out = *v; return true; }
        }
        else if (type == STR("IntProperty") || type == STR("Int32Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<int32>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("UInt32Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint32>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("Int64Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<int64>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("UInt64Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint64>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("ByteProperty") || type == STR("UInt8Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint8>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("BoolProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<bool>(owner)) { out = *v ? 1.0 : 0.0; return true; }
            if (auto* v = prop->ContainerPtrToValuePtr<uint8>(owner)) { out = *v ? 1.0 : 0.0; return true; }
        }
        else if (type == STR("EnumProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint8>(owner)) { out = (double)*v; return true; }
            if (auto* v = prop->ContainerPtrToValuePtr<int32>(owner)) { out = (double)*v; return true; }
        }
    }
    catch (...) {}

    return false;
}

bool read_numeric_property_from_container(FProperty* prop, void* owner, double& out)
{
    if (!prop || !owner) return false;
    const auto type = prop->GetClass().GetFName().ToString();

    try
    {
        if (type == STR("FloatProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<float>(owner)) { out = *v; return true; }
        }
        else if (type == STR("DoubleProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<double>(owner)) { out = *v; return true; }
        }
        else if (type == STR("IntProperty") || type == STR("Int32Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<int32>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("UInt32Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint32>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("Int64Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<int64>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("UInt64Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint64>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("ByteProperty") || type == STR("UInt8Property"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint8>(owner)) { out = (double)*v; return true; }
        }
        else if (type == STR("BoolProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<bool>(owner)) { out = *v ? 1.0 : 0.0; return true; }
            if (auto* v = prop->ContainerPtrToValuePtr<uint8>(owner)) { out = *v ? 1.0 : 0.0; return true; }
        }
        else if (type == STR("EnumProperty"))
        {
            if (auto* v = prop->ContainerPtrToValuePtr<uint8>(owner)) { out = (double)*v; return true; }
            if (auto* v = prop->ContainerPtrToValuePtr<int32>(owner)) { out = (double)*v; return true; }
        }
    }
    catch (...) {}

    return false;
}

FProperty* struct_field(UStruct* owner, const wchar_t* name)
{
    if (!owner) return nullptr;
    try
    {
        return owner->GetPropertyByNameInChain(name);
    }
    catch (...)
    {
        return nullptr;
    }
}

void* struct_value_ptr(FProperty* prop, void* owner)
{
    if (!prop || !owner) return nullptr;
    try
    {
        return prop->ContainerPtrToValuePtr<void>(owner);
    }
    catch (...)
    {
        return nullptr;
    }
}

bool is_object_property(FProperty* prop)
{
    if (!prop) return false;
    const auto type = prop->GetClass().GetFName().ToString();
    return type == STR("ObjectProperty")
        || type == STR("ObjectPtrProperty")
        || type == STR("WeakObjectProperty");
}

bool widget_tree_like_property_name(const std::wstring& lower_name)
{
    return contains_token(lower_name, L"widget")
        || contains_token(lower_name, L"content")
        || contains_token(lower_name, L"slot")
        || contains_token(lower_name, L"overlay")
        || contains_token(lower_name, L"panel")
        || contains_token(lower_name, L"root")
        || contains_token(lower_name, L"tree")
        || contains_token(lower_name, L"progress")
        || contains_token(lower_name, L"bar")
        || contains_token(lower_name, L"text")
        || contains_token(lower_name, L"child")
        || contains_token(lower_name, L"vital")
        || contains_token(lower_name, L"sleep");
}

bool seen_widget(const std::vector<UObject*>& seen, UObject* o)
{
    return std::find(seen.begin(), seen.end(), o) != seen.end();
}

int sleep_widget_score(const std::wstring& full_name, const std::wstring& hit, const std::wstring& text, double pct)
{
    const auto lower_full = lower_copy(full_name);
    const auto lower_hit = lower_copy(hit);
    int score = 0;
    if (contains_token(lower_full, L"sleep") || contains_token(lower_hit, L"sleep")) score += 12;
    if (contains_token(lower_full, L"vital") || contains_token(lower_hit, L"vital")) score += 8;
    if (contains_token(lower_full, L"overlay") || contains_token(lower_hit, L"overlay")) score += 4;
    if (contains_token(lower_hit, L"text") || !text.empty()) score += 2;
    if (text.find(L"/") != std::wstring::npos) score += 6;
    if (pct >= 90.0) score += 2;
    if (pct >= 5.0) score += 1;
    return score;
}

bool try_sleepiness_from_memory(double& pct)
{
    if (!g_use_memory_sleep || g_sleep_memory_offset == 0) return false;

    HMODULE mod = nullptr;
    if (!g_sleep_memory_module.empty())
    {
        mod = GetModuleHandleW(g_sleep_memory_module.c_str());
    }
    if (!mod)
    {
        mod = GetModuleHandleW(nullptr);
    }
    if (!mod) return false;

    const auto addr = reinterpret_cast<uintptr_t>(mod) + g_sleep_memory_offset;
    float raw = 0.0f;

    __try
    {
        raw = *reinterpret_cast<float*>(addr);
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        return false;
    }

    const double scaled = (double)raw * g_sleep_memory_scale;
    if (!std::isfinite(scaled) || scaled < 0.0 || scaled > 2000.0) return false;
    if (!normalize_percent(scaled, pct)) return false;

    if (g_log_sleep_changes && g_verbose && (!g_last_sleep_change_ok || std::fabs(pct - g_last_sleep_change_pct) >= 0.01))
    {
        vlog(STR("[SCS] Sleep changed via memory pct={:.2f} raw={:.4f} offset=0x{:X}\n"),
            pct, scaled, static_cast<unsigned long long>(g_sleep_memory_offset));
        g_last_sleep_change_ok = true;
        g_last_sleep_change_pct = pct;
    }
    return true;
}

bool try_sleepiness_from_vitals_overlay(double& pct)
{
    auto* h = hud_obj();
    if (!h) return false;

    auto* panel = prop(h, L"StatPanel");
    if (!panel) return false;

    auto* overlay = prop(panel, L"VitalsOverlay");
    if (!overlay) return false;

    bool have_any = false;
    double best_pct = 0.0;
    int best_score = std::numeric_limits<int>::min();
    std::wstring best_hit;
    std::vector<UObject*> seen;

    std::function<void(UObject*, int, const std::wstring&)> scan = [&](UObject* o, int depth, const std::wstring& path)
    {
        if (!o || depth > 8 || seen_widget(seen, o) || !can_query_uobject(o)) return;
        seen.push_back(o);

        const auto full = safe_fullname(o);
        const auto obj_path = path.empty() ? full : path;

        auto consider = [&](double candidate, const std::wstring& hit, const std::wstring& text = std::wstring{})
        {
            double normalized = 0.0;
            if (!normalize_percent(candidate, normalized)) return;
            const int score = sleep_widget_score(full, hit, text, normalized);
            if (!have_any || score > best_score || (score == best_score && normalized > best_pct))
            {
                have_any = true;
                best_pct = normalized;
                best_score = score;
                best_hit = obj_path + L" :: " + hit;
                vlog(STR("[SCS] Vitals overlay cand pct={:.2f} score={} hit={} text={}\n"),
                    normalized, score, best_hit, text.empty() ? L"(n/a)" : text);
            }
        };

        double value = 0.0;
        if (num_prop(o, L"Percent", value)) consider(value, L"Percent");
        if (num_prop(o, L"ProgressValue", value)) consider(value, L"ProgressValue");
        if (num_prop(o, L"CurrentPercent", value)) consider(value, L"CurrentPercent");

        std::wstring text;
        double parsed = 0.0;
        if (text_prop(o, L"Text", text) && parse_first_number(text, parsed))
        {
            consider(parsed, L"Text", text);
        }

        if (auto* bar_obj = prop(o, L"ProgressBarObj"))
        {
            scan(bar_obj, depth + 1, obj_path + L".ProgressBarObj");
        }

        try
        {
            if (auto* slots = o->GetValuePtrByPropertyNameInChain<TArrayHeader>(L"Slots"))
            {
                if (slots->Data && slots->Num > 0 && slots->Num <= 64)
                {
                    auto** data = reinterpret_cast<UObject**>(slots->Data);
                    for (int i = 0; i < slots->Num; ++i)
                    {
                        auto* slot = data[i];
                        if (!slot) continue;
                        scan(slot, depth + 1, obj_path + L".Slots[" + std::to_wstring(i) + L"]");
                        if (auto* content = prop(slot, L"Content"))
                        {
                            scan(content, depth + 1, obj_path + L".Slots[" + std::to_wstring(i) + L"].Content");
                        }
                    }
                }
            }
        }
        catch (...) {}

        try
        {
            auto* cls = o->GetClassPrivate();
            if (!cls) return;
            for (FProperty* prop_it : cls->ForEachPropertyInChain())
            {
                if (!prop_it || !is_object_property(prop_it)) continue;
                const auto name = prop_it->GetFName().ToString();
                const auto lower_name = lower_copy(name);
                if (!widget_tree_like_property_name(lower_name)) continue;

                UObject* child = nullptr;
                try
                {
                    if (auto* ptr = prop_it->ContainerPtrToValuePtr<UObject*>(o)) child = *ptr;
                }
                catch (...) { child = nullptr; }
                if (!child || child == o) continue;
                scan(child, depth + 1, obj_path + L"." + name);
            }
        }
        catch (...) {}
    };

    scan(overlay, 0, L"VitalsOverlay");
    if (!have_any) return false;

    pct = best_pct;
    vlog(STR("[SCS] Sleep read via vitals overlay pct={:.2f} hit={}\n"), pct, best_hit);
    return true;
}

bool widget_numeric_name_match(const std::wstring& lower_name)
{
    if (contains_token(lower_name, L"opacity")) return false;
    if (contains_token(lower_name, L"alpha")) return false;
    if (lower_name == L"bshouldshowprogress") return false;
    if (contains_token(lower_name, L"showprogress")) return false;
    return contains_token(lower_name, L"sleep")
        || contains_token(lower_name, L"progress")
        || contains_token(lower_name, L"percent")
        || contains_token(lower_name, L"fill")
        || contains_token(lower_name, L"value");
}

bool widget_object_name_match(const std::wstring& lower_name)
{
    return contains_token(lower_name, L"sleep")
        || contains_token(lower_name, L"progress")
        || contains_token(lower_name, L"image")
        || contains_token(lower_name, L"icon")
        || contains_token(lower_name, L"shadow")
        || contains_token(lower_name, L"bar")
        || contains_token(lower_name, L"fill")
        || contains_token(lower_name, L"meter")
        || contains_token(lower_name, L"widget");
}

bool try_sleepiness_from_obj(UObject* o, double& pct)
{
    if (!o) return false;

    bool have_any = false;
    double best = 0.0;
    const wchar_t* cur_names[] = { L"SleepinessPoints", L"CurrentSleepinessPoints", L"CurrentSleepiness", L"Sleepiness" };
    const wchar_t* max_names[] = { L"MaxSleepinessPoints", L"SleepinessPointsMax", L"MaxSleepiness", L"SleepinessMax" };

    for (auto* n : cur_names)
    {
        double cur = 0.0;
        if (!num_prop(o, n, cur)) continue;
        for (auto* m : max_names)
        {
            double maxv = 0.0;
            if (num_prop(o, m, maxv) && maxv > 0.0)
            {
                const double candidate = clamp_pct(cur / maxv * 100.0);
                if (consider_pct_candidate(candidate, have_any, best))
                {
                    pct = best;
                    return true;
                }
            }
        }
        double candidate = 0.0;
        if (!normalize_percent(cur, candidate)) continue;
        if (consider_pct_candidate(candidate, have_any, best))
        {
            pct = best;
            return true;
        }
    }
    if (!have_any) return false;
    pct = best;
    return true;
}

bool try_sleepiness_from_processors(double& pct)
{
    if (!can_query_uobject(g_ga)) return false;
    if (try_sleepiness_from_obj(g_ga, pct)) return true;

    try
    {
        auto* a = g_ga->GetValuePtrByPropertyNameInChain<TArrayHeader>(L"Processors");
        if (!a || !a->Data || a->Num <= 0 || a->Num > 64) return false;
        auto** data = reinterpret_cast<UObject**>(a->Data);

        for (int i = 0; i < a->Num; ++i)
        {
            auto f = safe_fullname(data[i]);
            if (f.find(L"Status") != std::wstring::npos && try_sleepiness_from_obj(data[i], pct)) return true;
        }

        for (int i = 0; i < a->Num; ++i) if (try_sleepiness_from_obj(data[i], pct)) return true;
    }
    catch (...) {}

    return false;
}

bool scalar_from_mid(UObject* img, double& pct)
{
    if (!g_enable_mid_scalar_probe || g_mid_scalar_probe_disabled_for_session) return false;
    auto* fn1 = fn_img_mid();
    auto* fn2 = fn_mid_scalar();
    if (!img || !fn1 || !fn2) return false;
    if (!can_query_uobject(img) || !can_query_uobject(fn1) || !can_query_uobject(fn2)) return false;

    PImageMID p1{};
    p1.ReturnValue = nullptr;
    if (!guarded_process_event(img, fn1, &p1))
    {
        g_mid_scalar_probe_disabled_for_session = true;
        slog(STR("[SCS] MID probe crashed on GetDynamicMaterial, disabling dynamic material sleep probe for this session\n"));
        return false;
    }
    if (!can_query_uobject(p1.ReturnValue)) return false;

    const wchar_t* names[] = { L"FullnessPercent", L"Percent", L"Progress", L"Fill", L"Value", L"Sleepiness", L"SleepinessPercent" };
    bool have_any = false;
    double best = 0.0;
    for (auto* n : names)
    {
        PMidScalar p2{};
        p2.ParameterName = FName(n);
        p2.ReturnValue = 0.0f;
        if (!guarded_process_event(p1.ReturnValue, fn2, &p2))
        {
            g_mid_scalar_probe_disabled_for_session = true;
            slog(STR("[SCS] MID probe crashed on scalar read, disabling dynamic material sleep probe for this session\n"));
            return false;
        }
        double candidate = 0.0;
        if (!normalize_percent((double)p2.ReturnValue, candidate)) continue;
        if (consider_pct_candidate(candidate, have_any, best))
        {
            pct = best;
            return true;
        }
    }
    if (!have_any) return false;
    pct = best;
    return true;
}

bool try_sleepiness_from_known_widget(UObject* o, double& pct, std::wstring* hit = nullptr)
{
    if (!o) return false;

    double candidate = 0.0;
    if (num_prop(o, L"Percent", candidate) && normalize_percent(candidate, pct))
    {
        if (hit) *hit = L"Percent";
        return true;
    }

    if (num_prop(o, L"ProgressValue", candidate) && normalize_percent(candidate, pct))
    {
        if (hit) *hit = L"ProgressValue";
        return true;
    }

    std::wstring text;
    if (text_prop(o, L"Text", text) && parse_first_number(text, candidate) && normalize_percent(candidate, pct))
    {
        if (hit) *hit = L"Text";
        return true;
    }

    auto* bar_obj = prop(o, L"ProgressBarObj");
    if (bar_obj && bar_obj != o)
    {
        if (num_prop(bar_obj, L"Percent", candidate) && normalize_percent(candidate, pct))
        {
            if (hit) *hit = L"ProgressBarObj.Percent";
            return true;
        }
    }

    return false;
}

bool try_sleepiness_from_widget_reflection(UObject* o, double& pct, int depth = 0, std::wstring* hit = nullptr)
{
    if (!o || depth > 3) return false;

    std::wstring known_hit;
    if (try_sleepiness_from_known_widget(o, pct, &known_hit))
    {
        if (hit) *hit = known_hit;
        return true;
    }

    bool have_any = false;
    double best = 0.0;
    std::wstring best_hit;

    try
    {
        auto* cls = o->GetClassPrivate();
        if (!cls) return false;

        for (FProperty* prop : cls->ForEachPropertyInChain())
        {
            if (!prop) continue;
            const auto name = prop->GetFName().ToString();
            const auto lower_name = lower_copy(name);
            if (!widget_numeric_name_match(lower_name)) continue;
            if (lower_name == L"weakstateopacitypercent") continue;
            if (prop->GetClass().GetFName().ToString() == STR("BoolProperty")) continue;

            double raw = 0.0;
            if (!read_numeric_property(prop, o, raw)) continue;

            double candidate = 0.0;
            if (!normalize_percent(raw, candidate)) continue;
            if (consider_pct_candidate(candidate, have_any, best))
            {
                if (hit) *hit = name;
                pct = best;
                return true;
            }
            if (best_hit.empty()) best_hit = name;
        }

        double mid_candidate = 0.0;
        if (scalar_from_mid(o, mid_candidate) && consider_pct_candidate(mid_candidate, have_any, best))
        {
            if (hit) *hit = L"dynamic_material";
            pct = best;
            return true;
        }
        if (best_hit.empty() && have_any) best_hit = L"dynamic_material";

        for (FProperty* prop : cls->ForEachPropertyInChain())
        {
            if (!prop || !is_object_property(prop)) continue;
            const auto name = prop->GetFName().ToString();
            const auto lower_name = lower_copy(name);
            if (!widget_object_name_match(lower_name)) continue;

            UObject* child = nullptr;
            try
            {
                if (auto* ptr = prop->ContainerPtrToValuePtr<UObject*>(o)) child = *ptr;
            }
            catch (...) { child = nullptr; }
            if (!child || child == o || !can_query_uobject(child)) continue;

            double child_pct = 0.0;
            std::wstring child_hit;
            if (!try_sleepiness_from_widget_reflection(child, child_pct, depth + 1, &child_hit)) continue;

            if (consider_pct_candidate(child_pct, have_any, best))
            {
                if (hit) *hit = name + L"." + child_hit;
                pct = best;
                return true;
            }
            if (best_hit.empty()) best_hit = name + L"." + child_hit;
        }
    }
    catch (...) {}

    if (!have_any) return false;
    if (hit) *hit = best_hit.empty() ? L"widget_reflection" : best_hit;
    pct = best;
    return true;
}

void maybe_dump_sleep_debug(UObject* panel, UObject* slot)
{
    if (!g_verbose) return;
    const auto n = now_ms();
    if (g_last_sleep_debug_dump && n - g_last_sleep_debug_dump < 5000) return;
    g_last_sleep_debug_dump = n;

    vlog(STR("[SCS] Sleep debug HUD={} panel={} slot={}\n"),
        safe_fullname(hud_obj()),
        safe_fullname(panel),
        safe_fullname(slot));

    double show_progress = -1.0;
    if (slot && num_prop(slot, L"bShouldShowProgress", show_progress))
    {
        vlog(STR("[SCS] Sleep debug slot bShouldShowProgress={}\n"), (int)show_progress);
    }

    if (!slot) return;

    try
    {
        auto* cls = slot->GetClassPrivate();
        if (!cls) return;
        for (FProperty* prop : cls->ForEachPropertyInChain())
        {
            if (!prop) continue;
            const auto name = prop->GetFName().ToString();
            const auto lower_name = lower_copy(name);

            if (widget_numeric_name_match(lower_name))
            {
                if (prop->GetClass().GetFName().ToString() == STR("BoolProperty")) continue;
                double raw = 0.0;
                if (read_numeric_property(prop, slot, raw))
                {
                    double pct = 0.0;
                    const bool normalized = normalize_percent(raw, pct);
                    vlog(STR("[SCS] Sleep debug slot num prop={} raw={:.4f} pct={:.4f} normalized={}\n"),
                        name, raw, normalized ? pct : -1.0, normalized ? 1 : 0);
                }
            }

            if (is_object_property(prop) && widget_object_name_match(lower_name))
            {
                UObject* child = nullptr;
                try
                {
                    if (auto* ptr = prop->ContainerPtrToValuePtr<UObject*>(slot)) child = *ptr;
                }
                catch (...) { child = nullptr; }
                if (!child || !can_query_uobject(child)) continue;

                double child_pct = 0.0;
                std::wstring child_hit;
                const bool ok = try_sleepiness_from_widget_reflection(child, child_pct, 1, &child_hit);
                vlog(STR("[SCS] Sleep debug slot obj prop={} child={} ok={} pct={:.4f} hit={}\n"),
                    name, safe_fullname(child), ok ? 1 : 0, ok ? child_pct : -1.0, ok ? child_hit : L"n/a");
            }
        }
    }
    catch (...) {}
}

void maybe_dump_runtime_sleep_candidates()
{
    if (!g_verbose) return;
    const auto n = now_ms();
    if (g_last_runtime_sleep_dump && n - g_last_runtime_sleep_dump < 10000) return;
    g_last_runtime_sleep_dump = n;

    auto dump_obj = [](UObject* obj, const wchar_t* label)
    {
        if (!obj) return;
        auto full = safe_fullname(obj);
        if (full.empty()) return;
        vlog(STR("[SCS] Runtime sleep dump {}={}\n"), label, full);
        const bool dump_all_numeric = full.find(L"GAPlayerStatusProcessor") != std::wstring::npos
            || full.find(L"GAInventoryStatusProcessor") != std::wstring::npos
            || full.find(L"GAResourceChangeProcessor") != std::wstring::npos;

        try
        {
            auto* cls = obj->GetClassPrivate();
            if (!cls) return;
            for (FProperty* prop : cls->ForEachPropertyInChain())
            {
                if (!prop) continue;
                const auto name = prop->GetFName().ToString();
                const auto lower = lower_copy(name);
                const auto type = prop->GetClass().GetFName().ToString();
                const bool name_match = contains_token(lower, L"sleep")
                    || contains_token(lower, L"vital")
                    || contains_token(lower, L"current")
                    || contains_token(lower, L"max")
                    || contains_token(lower, L"point")
                    || contains_token(lower, L"status")
                    || contains_token(lower, L"effect")
                    || contains_token(lower, L"param")
                    || contains_token(lower, L"resource")
                    || contains_token(lower, L"value")
                    || contains_token(lower, L"progress");
                if (!(dump_all_numeric || name_match))
                {
                    continue;
                }

                double raw = 0.0;
                if (read_numeric_property(prop, obj, raw))
                {
                    double pct = 0.0;
                    const bool ok = normalize_percent(raw, pct);
                    vlog(STR("[SCS] Runtime sleep cand {}.{} type={} raw={:.4f} pct={:.4f} norm={}\n"),
                        label, name, type, raw, ok ? pct : -1.0, ok ? 1 : 0);
                    continue;
                }

                if (is_object_property(prop))
                {
                    UObject* child = nullptr;
                    try
                    {
                        if (auto* ptr = prop->ContainerPtrToValuePtr<UObject*>(obj)) child = *ptr;
                    }
                    catch (...) { child = nullptr; }
                    vlog(STR("[SCS] Runtime sleep obj {}.{} type={} child={}\n"),
                        label, name, type, safe_fullname(child));
                    continue;
                }

                vlog(STR("[SCS] Runtime sleep prop {}.{} type={}\n"), label, name, type);
            }
        }
        catch (...) {}
    };

    auto dump_raw = [](UObject* obj, const wchar_t* label)
    {
        if (!obj || !can_query_uobject(obj)) return;
        const auto full = safe_fullname(obj);
        if (full.empty()) return;

        size_t begin = 0;
        size_t end = 0;
        if (full.find(L"GAPlayerStatusProcessor") != std::wstring::npos)
        {
            begin = 0x48;
            end = 0x68;
        }
        else if (full.find(L"GAInventoryStatusProcessor") != std::wstring::npos)
        {
            begin = 0x48;
            end = 0x70;
        }
        else if (full.find(L"GAResourceChangeProcessor") != std::wstring::npos)
        {
            begin = 0x28;
            end = 0x158;
        }
        else
        {
            return;
        }

        const auto* bytes = reinterpret_cast<const uint8*>(obj);
        for (size_t off = begin; off + sizeof(float) <= end; off += 4)
        {
            float f = 0.0f;
            int32 i = 0;
            try
            {
                memcpy(&f, bytes + off, sizeof(float));
                memcpy(&i, bytes + off, sizeof(int32));
            }
            catch (...) { continue; }

            if (std::isfinite(f) && f >= -0.001f && f <= 1000.0f)
            {
                vlog(STR("[SCS] Runtime sleep raw {}+0x{:X} float={:.4f}\n"), label, (int)off, (double)f);
            }
            if (i >= -1 && i <= 1000)
            {
                vlog(STR("[SCS] Runtime sleep raw {}+0x{:X} int={}\n"), label, (int)off, i);
            }
        }

        for (size_t off = begin; off + sizeof(double) <= end; off += 8)
        {
            double d = 0.0;
            try
            {
                memcpy(&d, bytes + off, sizeof(double));
            }
            catch (...) { continue; }
            if (std::isfinite(d) && d >= -0.001 && d <= 1000.0)
            {
                vlog(STR("[SCS] Runtime sleep raw {}+0x{:X} double={:.4f}\n"), label, (int)off, d);
            }
        }
    };

    dump_obj(player_obj(), L"player");
    dump_obj(g_ga, L"ga");

    try
    {
        if (g_ga)
        {
            auto* a = g_ga->GetValuePtrByPropertyNameInChain<TArrayHeader>(L"Processors");
            if (a && a->Data && a->Num > 0 && a->Num <= 64)
            {
                auto** data = reinterpret_cast<UObject**>(a->Data);
                for (int i = 0; i < a->Num; ++i)
                {
                    dump_obj(data[i], L"processor");
                    dump_raw(data[i], L"processor");
                }
            }
        }
    }
    catch (...) {}
}

bool try_sleepiness_from_debug_hud(double& pct)
{
    if (!g_enable_sleep_vital_bootstrap || !g_debug_sleep_vital_requested) return false;

    auto* h = debug_hud_obj();
    if (!h) return false;

    auto* data = prop(h, L"DataText");
    if (!data) return false;

    std::wstring text;
    double candidate = 0.0;
    if (!text_prop(data, L"Text", text)) return false;
    if (!parse_first_number(text, candidate) || !normalize_percent(candidate, pct)) return false;
    vlog(STR("[SCS] Sleep read via debug HUD DataText pct={:.2f} text={}\n"), pct, text);
    return true;
}

bool try_sleepiness_from_stat_slot(double& pct)
{
    auto* h = hud_obj();
    if (!h) return false;
    auto* panel = prop(h, L"StatPanel");
    if (!panel) return false;
    auto* slot = prop(panel, L"StatSleep");
    if (!slot) return false;

    bool have_any = false;
    double best = 0.0;

    const wchar_t* direct[] = { L"Percent", L"Progress", L"CurrentPercent", L"ProgressPercent", L"FillPercent", L"SleepinessPercent" };
    for (auto* n : direct)
    {
        double v = 0.0;
        double candidate = 0.0;
        if (!num_prop(slot, n, v) || !normalize_percent(v, candidate)) continue;
        if (consider_pct_candidate(candidate, have_any, best))
        {
            pct = best;
            return true;
        }
    }

    const wchar_t* related[] = { L"ProgressImage", L"Progress", L"ProgressBar", L"ProgressWidget", L"Icon", L"Shadow", L"FillBar", L"Bar" };
    for (auto* n : related)
    {
        auto* child = prop(slot, n);
        if (!child) continue;

        double candidate = 0.0;
        if (try_sleepiness_from_widget_reflection(child, candidate))
        {
            if (consider_pct_candidate(candidate, have_any, best))
            {
                pct = best;
                return true;
            }
        }

        if (scalar_from_mid(child, candidate) && consider_pct_candidate(candidate, have_any, best))
        {
            pct = best;
            return true;
        }
    }

    std::wstring hit;
    if (try_sleepiness_from_widget_reflection(slot, best, 0, &hit))
    {
        if (best <= 0.001) maybe_dump_sleep_debug(panel, slot);
        pct = best;
        vlog(STR("[SCS] Sleep read via widget reflection pct={:.2f} hit={}\n"), best, hit);
        return true;
    }

    maybe_dump_sleep_debug(panel, slot);
    return false;
}

bool read_sleepiness_percent(double& pct, std::wstring& source)
{
    if (try_sleepiness_from_memory(pct)) { source = L"memory"; return true; }
    if (try_sleepiness_from_obj(player_obj(), pct)) { source = L"player"; return true; }
    if (try_sleepiness_from_processors(pct)) { source = L"ga_processors"; return true; }
    if (try_sleepiness_from_vitals_overlay(pct)) { source = L"vitals_overlay"; return true; }
    if (try_sleepiness_from_stat_slot(pct)) { source = L"stat_sleep_ui"; return true; }
    if (g_use_debug_hud_sleep_source && try_sleepiness_from_debug_hud(pct)) { source = L"debug_hud"; return true; }
    maybe_dump_runtime_sleep_candidates();
    source = L"";
    return false;
}

bool apply_bucket(int bucket, const TCHAR* reason)
{
    bucket = std::max(0, std::min(100, bucket));
    const auto sid = bucket > 0 ? set_sid_for_bucket(bucket) : std::wstring{};
    slog(STR("[SCS] Apply bucket reason={} bucket={} sid={}\n"), reason, bucket, bucket > 0 ? sid : L"(reset-only)");
    clear_combat_sleepiness_effects();
    if (!effect_call(g_reset_sid, true))
    {
        slog(STR("[SCS] Bucket apply failed on reset, reason={}\n"), reason);
        return false;
    }
    if (bucket <= 0) return true;
    if (!effect_call(sid, true))
    {
        slog(STR("[SCS] Bucket apply failed on set, reason={} sid={}\n"), reason, sid);
        return false;
    }
    return true;
}

void cancel_recovery(const TCHAR* reason)
{
    if (!g_recovery_active) return;
    slog(STR("[SCS] Recovery canceled reason={} base_bucket={} target_bucket={} last_bucket={}\n"),
        reason, g_recovery_base_bucket, g_recovery_target_bucket, g_recovery_last_bucket);
    clear_combat_sleepiness_effects();
    clear_recovery_state();
}

void remove_passout_effects(const TCHAR* reason, bool keep_wakeup_knockdown = false)
{
    slog(STR("[SCS] Passout effects remove reason={}\n"), reason);
    effect_call(g_passout_composite_sid, false);
    effect_call(g_passout_knockdown_sid, false);
    if (!keep_wakeup_knockdown) effect_call(g_passout_knockdown_up_sid, false);
    effect_call(g_passout_postprocess_sid, false);
    effect_call(g_passout_reset_sid, false);
    effect_call(g_passout_health_sid, false);
}

void clear_passout_state(const TCHAR* reason, bool remove_effects)
{
    if (g_passout_pending || g_passout_triggered)
    {
        slog(STR("[SCS] Passout state clear reason={} pending={} triggered={}\n"),
            reason, g_passout_pending ? 1 : 0, g_passout_triggered ? 1 : 0);
    }
    g_passout_pending = false;
    g_passout_triggered = false;
    g_passout_wakeup_sent = false;
    g_passout_drag_weapon_sent = g_passout_drag_weapon_sid.empty();
    g_passout_pending_since = 0;
    g_passout_triggered_at = 0;
    g_passout_knockdown_release_at = 0;
    g_passout_wakeup_clear_at = 0;
    g_passout_drag_weapon_at = 0;
    g_last_hud_hide_enforce_at = 0;
    if (g_hud_hidden_by_passout)
    {
        if (g_passout_hud_show_delay_ms > 0)
        {
            g_passout_hud_show_at = now_ms() + (uint64_t)g_passout_hud_show_delay_ms;
            vlog(STR("[SCS] HUD delayed show scheduled delay_ms={}\n"), g_passout_hud_show_delay_ms);
        }
        else
        {
            show_hud(true, reason);
            g_hud_hidden_by_passout = false;
        }
    }
    if (remove_effects) remove_passout_effects(reason, g_passout_wakeup_clear_at && g_passout_wakeup_clear_at > now_ms());
}

void trigger_passout(double pct, const TCHAR* reason)
{
    slog(STR("[SCS] Passout TRIGGER reason={} pct={:.2f} threshold={:.2f}\n"), reason, pct, g_passout_threshold_pct);
    g_passout_pending = false;
    g_passout_pending_since = 0;
    g_passout_triggered = true;
    g_passout_wakeup_sent = false;
    g_passout_drag_weapon_sent = false;
    g_passout_wakeup_clear_at = 0;
    g_passout_hud_show_at = 0;
    g_passout_triggered_at = now_ms() + (uint64_t)g_passout_effect_delay_ms;
    g_passout_knockdown_release_at = now_ms() + (uint64_t)(g_passout_effect_delay_ms + g_passout_knockdown_hold_ms);
    g_passout_drag_weapon_at = g_passout_drag_weapon_sid.empty() ? 0 : (now_ms() + (uint64_t)g_passout_drag_weapon_delay_ms);
    if (g_hide_hud_during_passout && !g_hud_hidden_by_passout)
    {
        show_hud(false, STR("passout_trigger"));
        g_hud_hidden_by_passout = true;
    }

    effect_call(g_passout_composite_sid, true);
    effect_call(g_passout_knockdown_sid, true);
    effect_call(g_passout_postprocess_sid, true);
    effect_call(g_passout_health_sid, true);
}

void apply_passout_recovery_reset(bool have_sleep, double pct)
{
    const double source_pct = have_sleep ? clamp_pct(pct) : 100.0;
    double target_pct = std::max(0.0, source_pct - g_passout_reset_pct);
    if (target_pct + 0.001 >= g_passout_threshold_pct)
    {
        target_pct = std::max(0.0, g_passout_threshold_pct - g_bucket_step);
    }

    const int target_bucket = bucket_from_percent(target_pct);
    slog(STR("[SCS] Passout recovery reset source_pct={:.2f} target_pct={:.2f} bucket={}\n"),
        source_pct, target_pct, target_bucket);

    if (apply_bucket(target_bucket, STR("passout_end_reset"))) return;

    if (!g_passout_reset_sid.empty())
    {
        slog(STR("[SCS] Passout recovery bucket failed, falling back to sid={}\n"), g_passout_reset_sid);
        effect_call(g_passout_reset_sid, true);
    }
}

void update_passout(bool allow_passout, bool have_sleep, double pct)
{
    const auto n = now_ms();
    if (!g_last_passout_update_at) g_last_passout_update_at = n;
    const auto delta = n - g_last_passout_update_at;
    g_last_passout_update_at = n;

    if (g_passout_wakeup_clear_at && n >= g_passout_wakeup_clear_at)
    {
        slog(STR("[SCS] Passout wakeup knockdown clear hold_ms={}\n"), g_passout_wakeup_hold_ms);
        effect_call(g_passout_knockdown_up_sid, false);
        g_passout_wakeup_clear_at = 0;
    }

    if (g_hud_hidden_by_passout && g_passout_hud_show_at && n >= g_passout_hud_show_at)
    {
        show_hud(true, STR("passout_delayed_show"));
        g_hud_hidden_by_passout = false;
        g_passout_hud_show_at = 0;
    }

    std::wstring ui_hit;
    const bool ui_pause = ui_blocks_passout(&ui_hit);
    if (ui_pause != g_last_ui_pause || ui_hit != g_last_ui_pause_view)
    {
        const std::wstring ui_label = ui_pause ? ui_hit : std::wstring(L"(none)");
        slog(STR("[SCS] Passout UI pause changed: {} -> {} view={}\n"),
            g_last_ui_pause ? 1 : 0, ui_pause ? 1 : 0, ui_label);
        g_last_ui_pause = ui_pause;
        g_last_ui_pause_view = ui_hit;
    }

    if (g_passout_triggered)
    {
        if (ui_pause)
        {
            g_passout_triggered_at += delta;
            if (g_passout_knockdown_release_at) g_passout_knockdown_release_at += delta;
            if (g_passout_drag_weapon_at) g_passout_drag_weapon_at += delta;
            if (g_last_hud_hide_enforce_at) g_last_hud_hide_enforce_at += delta;
            return;
        }
        if (g_hud_hidden_by_passout && (!g_last_hud_hide_enforce_at || n - g_last_hud_hide_enforce_at >= 500))
        {
            show_hud(false, STR("passout_maintain"));
            g_last_hud_hide_enforce_at = n;
        }

        // The passout effect window starts after EffectDelayMs. Until then we only
        // maintain HUD hide / UI pause state and avoid unsigned underflow on elapsed.
        if (g_passout_triggered_at && n < g_passout_triggered_at)
        {
            return;
        }

        const uint64_t passout_elapsed = g_passout_triggered_at ? (n - g_passout_triggered_at) : 0;

        if (g_passout_knockdown_release_at && n >= g_passout_knockdown_release_at)
        {
            slog(STR("[SCS] Passout knockdown release hold_ms={}\n"), g_passout_knockdown_hold_ms);
            effect_call(g_passout_knockdown_sid, false);
            effect_call(g_passout_knockdown_up_sid, false);
            g_passout_knockdown_release_at = 0;
        }
        if (!g_passout_drag_weapon_sent && !g_passout_drag_weapon_sid.empty() && g_passout_drag_weapon_at && n >= g_passout_drag_weapon_at)
        {
            slog(STR("[SCS] Passout drag weapon at_ms={}\n"), g_passout_drag_weapon_delay_ms);
            effect_call(g_passout_drag_weapon_sid, true);
            g_passout_drag_weapon_sent = true;
            g_passout_drag_weapon_at = 0;
        }
        if (!g_passout_wakeup_sent && passout_elapsed >= (uint64_t)g_passout_wakeup_at_ms)
        {
            slog(STR("[SCS] Passout wakeup knockdown at_ms={}\n"), g_passout_wakeup_at_ms);
            effect_call(g_passout_knockdown_up_sid, true);
            g_passout_wakeup_clear_at = n + (uint64_t)g_passout_wakeup_hold_ms;
            g_passout_wakeup_sent = true;
        }
        if (passout_elapsed >= (uint64_t)g_passout_active_ms)
        {
            slog(STR("[SCS] Passout active window ended active_ms={}\n"), g_passout_active_ms);
            clear_passout_state(STR("active_window_end"), true);
            apply_passout_recovery_reset(have_sleep, pct);
        }
        return;
    }

    if (!allow_passout)
    {
        if (g_passout_pending)
        {
            slog(STR("[SCS] Passout pending canceled reason=passout_not_allowed\n"));
            g_passout_pending = false;
            g_passout_pending_since = 0;
        }
        return;
    }

    if (ui_pause)
    {
        if (g_passout_pending) g_passout_pending_since += delta;
        return;
    }

    if (!have_sleep)
    {
        if (g_passout_pending)
        {
            slog(STR("[SCS] Passout pending paused reason=no_sleep_read\n"));
        }
        return;
    }

    if (pct + 0.001 < g_passout_threshold_pct)
    {
        if (g_passout_pending)
        {
            slog(STR("[SCS] Passout pending canceled reason=below_threshold pct={:.2f} threshold={:.2f}\n"),
                pct, g_passout_threshold_pct);
            g_passout_pending = false;
            g_passout_pending_since = 0;
        }
        return;
    }

    if (!g_passout_pending)
    {
        g_passout_pending = true;
        g_passout_pending_since = n;
        slog(STR("[SCS] Passout pending start pct={:.2f} threshold={:.2f} delay_ms={}\n"),
            pct, g_passout_threshold_pct, g_passout_delay_ms);
        return;
    }

    const auto elapsed = n - g_passout_pending_since;
    if (elapsed >= (uint64_t)g_passout_delay_ms)
    {
        trigger_passout(pct, STR("threshold_elapsed"));
    }
}

void set_pause(bool want, const TCHAR* reason)
{
    if (want)
    {
        if (g_pause_on) return;
        if (effect_call(g_pause_sid, true))
        {
            g_pause_on = true;
            slog(STR("[SCS] Pause ON reason={}\n"), reason);
        }
        return;
    }

    // Force-remove the pause effect when combat ends so cfg Duration never keeps it alive.
    if (!g_pause_on && g_pause_sid.empty()) return;
    if (effect_call(g_pause_sid, false))
    {
        g_pause_on = false;
        slog(STR("[SCS] Pause OFF reason={}\n"), reason);
    }
}

void resync_effects()
{
    if (!g_need_resync) return;
    slog(STR("[SCS] Resync begin\n"));
    cancel_recovery(STR("resync"));
    clear_passout_state(STR("resync"), true);
    clear_combat_sleepiness_effects();
    effect_call(g_pause_sid, false);
    g_pause_on = false;
    g_snapshot_ok = false;
    g_snapshot_pct = 0.0;
    g_combat_sleep_debt_pct = 0.0;
    g_last_raw = false;
    g_last_pause = false;
    g_last_combat = 0;
    g_need_resync = false;
    slog(STR("[SCS] Resync complete\n"));
}

void capture_snapshot(const TCHAR* reason, bool have_sleep, double pct, const std::wstring& src)
{
    g_snapshot_ok = false;
    g_snapshot_pct = 0.0;

    if (have_sleep)
    {
        g_snapshot_pct = pct;
        g_snapshot_ok = true;
        slog(STR("[SCS] Snapshot captured reason={} pct={:.2f} bucket={} source={}\n"),
            reason, g_snapshot_pct, bucket_from_percent(g_snapshot_pct), src);
    }
    else
    {
        slog(STR("[SCS] Snapshot FAILED reason={}\n"), reason);
    }
}

double current_recovery_visible_pct(bool have_sleep, double pct)
{
    if (have_sleep) return clamp_pct(pct);
    if (g_recovery_last_bucket >= 0) return (double)g_recovery_last_bucket;
    return (double)g_recovery_base_bucket;
}

void carry_over_recovery_debt(bool have_sleep, double pct, const TCHAR* reason)
{
    if (!g_recovery_active) return;

    const double current_pct = current_recovery_visible_pct(have_sleep, pct);
    const double remaining_pct = std::max(0.0, g_recovery_target_pct - current_pct);
    g_combat_sleep_debt_pct = clamp_pct(remaining_pct);

    slog(STR("[SCS] Recovery debt carryover reason={} current_pct={:.2f} target_pct={:.2f} debt_pct={:.2f}\n"),
        reason, current_pct, g_recovery_target_pct, g_combat_sleep_debt_pct);
}

void add_combat_sleep_debt(const TCHAR* reason, bool have_sleep, double pct, const std::wstring& src)
{
    const double visible_pct = have_sleep ? clamp_pct(pct) : 0.0;
    const double prev_debt_pct = g_combat_sleep_debt_pct;
    const double added_pct = clamp_pct(visible_pct * 0.5);
    g_combat_sleep_debt_pct = clamp_pct(g_combat_sleep_debt_pct + added_pct);

    slog(STR("[SCS] Combat debt add reason={} visible_pct={:.2f} added_pct={:.2f} prev_debt={:.2f} new_debt={:.2f} source={}\n"),
        reason, visible_pct, added_pct, prev_debt_pct, g_combat_sleep_debt_pct, src);
}

void begin_recovery(bool have_sleep, double pct)
{
    cancel_recovery(STR("restart"));
    effect_call(g_pause_sid, false);
    g_pause_on = false;

    if (!g_snapshot_ok)
    {
        slog(STR("[SCS] Recovery skipped: no snapshot\n"));
        return;
    }

    g_recovery_base_pct = have_sleep ? clamp_pct(pct) : 0.0;
    g_recovery_target_pct = clamp_pct(g_snapshot_pct * 0.5);
    const double delta_pct = std::max(0.0, g_recovery_target_pct - g_recovery_base_pct);
    g_recovery_base_bucket = bucket_from_percent(g_recovery_base_pct);
    g_recovery_target_bucket = bucket_from_percent(delta_pct);

    if (g_recovery_target_bucket <= 0)
    {
        slog(STR("[SCS] Recovery skipped: delta is zero current_pct={:.2f} snapshot_pct={:.2f} target_pct={:.2f}\n"),
            g_recovery_base_pct, g_snapshot_pct, g_recovery_target_pct);
        g_snapshot_ok = false;
        g_snapshot_pct = 0.0;
        return;
    }

    const auto sid = recover_sid_for_bucket(g_recovery_target_bucket);
    slog(STR("[SCS] Recovery effect apply current_pct={:.2f} snapshot_pct={:.2f} target_pct={:.2f} delta_pct={:.2f} bucket={} sid={}\n"),
        g_recovery_base_pct, g_snapshot_pct, g_recovery_target_pct, delta_pct, g_recovery_target_bucket, sid);
    effect_call(sid, true);

    clear_recovery_state();
    g_snapshot_ok = false;
    g_snapshot_pct = 0.0;
    g_combat_sleep_debt_pct = 0.0;
}

void update_recovery()
{
    return;
}

void maybe_heartbeat(const CombatProbe& probe, bool raw, bool pause, bool have_sleep, double pct, const std::wstring& src)
{
    if (!g_log_state || g_heartbeat_ms <= 0) return;
    const auto n = now_ms();
    if (g_last_heartbeat && n - g_last_heartbeat < (uint64_t)g_heartbeat_ms) return;
    g_last_heartbeat = n;

    const uint64_t passout_left = g_passout_pending
        ? (g_passout_delay_ms > (int)(n - g_passout_pending_since) ? (uint64_t)(g_passout_delay_ms - (n - g_passout_pending_since)) : 0)
        : 0;

    slog(STR("[SCS] Heartbeat raw={} pause={} pause_fx={} threat={} hud_vis={} hud_red={} focus={} ui_pause={} sleep_ok={} sleep_pct={:.2f} sleep_src={} snapshot_ok={} snapshot_pct={:.2f} recovery={} base_bucket={} target_bucket={} last_bucket={} passout_pending={} passout_triggered={} passout_left_ms={} suspend_left_ms={}\n"),
        raw ? 1 : 0,
        pause ? 1 : 0,
        g_pause_on ? 1 : 0,
        probe.threat,
        probe.hud_visibility,
        probe.hud_red ? 1 : 0,
        probe.focus ? 1 : 0,
        g_last_ui_pause ? 1 : 0,
        have_sleep ? 1 : 0,
        have_sleep ? pct : -1.0,
        have_sleep ? src : L"n/a",
        g_snapshot_ok ? 1 : 0,
        g_snapshot_pct,
        g_recovery_active ? 1 : 0,
        g_recovery_base_bucket,
        g_recovery_target_bucket,
        g_recovery_last_bucket,
        g_passout_pending ? 1 : 0,
        g_passout_triggered ? 1 : 0,
        passout_left,
        g_suspend_until && g_suspend_until > n ? (g_suspend_until - n) : 0);
}

void tick()
{
    const auto n = now_ms();
    if (g_suspend_until && n < g_suspend_until) return;
    if (g_last_poll && n - g_last_poll < (uint64_t)g_tick_ms) return;
    g_last_poll = n;

    auto* p = player_obj();
    if (!p)
    {
        vlog(STR("[SCS] Tick skip: player not found\n"));
        return;
    }

    resync_effects();
    maybe_bootstrap_debug_ui();

    double sleep_pct = 0.0;
    std::wstring sleep_src;
    const bool have_sleep = read_sleepiness_percent(sleep_pct, sleep_src);

    const auto probe = probe_combat(p);
    const bool raw = raw_combat(probe);
    if (raw) g_last_combat = n;
    const bool pause = raw || (g_last_combat && n - g_last_combat < (uint64_t)g_grace_ms);

    if (raw != g_last_raw)
    {
        slog(STR("[SCS] Raw combat changed: {} -> {} (threat={}, hud_vis={}, hud_red={}, focus={}, dmg_in={}, dmg_out={})\n"),
            g_last_raw ? 1 : 0, raw ? 1 : 0, probe.threat, probe.hud_visibility, probe.hud_red ? 1 : 0,
            probe.focus ? 1 : 0, probe.recent_incoming_damage ? 1 : 0, probe.recent_outgoing_damage ? 1 : 0);
        g_last_raw = raw;
    }

    if (pause && !g_last_pause)
    {
        cancel_recovery(STR("new_combat"));
        capture_snapshot(STR("pause_enter"), have_sleep, sleep_pct, sleep_src);
        apply_bucket(0, STR("pause_enter_reset"));
    }

    if (pause)
    {
        set_pause(true, STR("combat_window"));
    }

    if (!pause && g_last_pause)
    {
        set_pause(false, STR("combat_window_end"));
        begin_recovery(have_sleep, sleep_pct);
    }

    if (!pause)
    {
        update_recovery();
    }

    update_passout(!pause, have_sleep, sleep_pct);

    if (pause != g_last_pause)
    {
        slog(STR("[SCS] Pause window changed: {} -> {}\n"), g_last_pause ? 1 : 0, pause ? 1 : 0);
        g_last_pause = pause;
    }

    maybe_heartbeat(probe, raw, pause, have_sleep, sleep_pct, sleep_src);
}

static void pe_pre(UObject* c, UFunction* f, void* params)
{
    if (f && f == fn_restart())
    {
        reset_runtime();
        if (c) g_pc = c;
        slog(STR("[SCS] ClientRestart PRE controller={}\n"), safe_fullname(c));
    }

    if (f && params)
    {
        if (f == fn_receive_any_damage() && c && c == g_player)
        {
            auto* p = static_cast<PReceiveAnyDamage*>(params);
            if (p->Damage > 0.0f && (can_query_uobject(p->InstigatedBy) || can_query_uobject(p->DamageCauser)))
            {
                g_last_damage_in = now_ms();
            }
        }

        if (f == fn_receive_instigated_any_damage() && c && c == g_pc)
        {
            auto* p = static_cast<PReceiveInstigatedAnyDamage*>(params);
            if (p->Damage > 0.0f && can_query_uobject(p->DamagedActor))
            {
                g_last_damage_out = now_ms();
            }
        }
    }

    if (!f || !g_track_player_effects) return;

    if (f == fn_apply())
    {
        auto* p = static_cast<PEffect*>(params);
        if (p)
        {
            track_player_effect_sid(wstr_from_fstring(p->EffectPrototypeSID), true, safe_fullname(c));
        }
        return;
    }

    if (f == fn_remove())
    {
        auto* p = static_cast<PEffect*>(params);
        if (p)
        {
            track_player_effect_sid(wstr_from_fstring(p->EffectPrototypeSID), false, safe_fullname(c));
        }
        return;
    }

    if (f == fn_comp_apply())
    {
        track_apply_effect_component(c, params, true);
        return;
    }

    if (f == fn_comp_remove())
    {
        track_apply_effect_component(c, params, false);
        return;
    }
}

static void pe_post(UObject* c, UFunction* f, void*)
{
    if (f && f == fn_restart())
    {
        if (c) g_pc = c;
        g_suspend_until = now_ms() + (uint64_t)g_restart_grace_ms;
        g_need_resync = true;
        slog(STR("[SCS] ClientRestart POST controller={} grace_ms={}\n"),
            safe_fullname(c), g_restart_grace_ms);
    }
}

static void engine_tick_post(UEngine*, float) { tick(); }
}

class SoporCombatSleep : public CppUserModBase
{
public:
    SoporCombatSleep()
    {
        ModName = STR("SoporCombatSleep");
        ModVersion = STR("0.6.28");
        ModDescription = STR("Pauses SOPOR sleepiness in combat, restores it post-combat, and drives passout from C++ with improved sleep discovery");
        ModAuthors = STR("ikoskin + Codex");
    }

    auto on_unreal_init() -> void override
    {
        load_cfg();
        Hook::RegisterProcessEventPreCallback(&pe_pre);
        Hook::RegisterProcessEventPostCallback(&pe_post);
        Hook::RegisterEngineTickPostCallback(&engine_tick_post);
        g_need_resync = true;

        vlog(STR("\n================ SoporCombatSleep ================\n"));
        vlog(STR("PauseEffectSID:       {}\n"), g_pause_sid);
        vlog(STR("ResetEffectSID:       {}\n"), g_reset_sid);
        vlog(STR("SetEffectPrefix:      {}\n"), g_set_prefix);
        vlog(STR("PostCombatBonusPct:   {:.1f}\n"), g_bonus_pct);
        vlog(STR("BucketStepPercent:    {:.1f}\n"), g_bucket_step);
        vlog(STR("CombatGraceMs:        {}\n"), g_grace_ms);
        vlog(STR("PostRestartGraceMs:   {}\n"), g_restart_grace_ms);
        vlog(STR("RecoveryDurationMs:   {}\n"), g_recovery_ms);
        vlog(STR("PassoutThresholdPct:  {:.1f}\n"), g_passout_threshold_pct);
        vlog(STR("PassoutDelayMs:       {}\n"), g_passout_delay_ms);
        vlog(STR("PassoutActiveMs:      {}\n"), g_passout_active_ms);
        vlog(STR("PassoutEffectDelayMs: {}\n"), g_passout_effect_delay_ms);
        vlog(STR("KnockdownHoldMs:      {}\n"), g_passout_knockdown_hold_ms);
        vlog(STR("WakeupAtMs:           {}\n"), g_passout_wakeup_at_ms);
        vlog(STR("PausePassoutDuringUI: {}\n"), g_passout_pause_during_ui ? 1 : 0);
        vlog(STR("HideHUDDuringPassout: {}\n"), g_hide_hud_during_passout ? 1 : 0);
        vlog(STR("TickIntervalMs:       {}\n"), g_tick_ms);
        vlog(STR("HeartbeatMs:          {}\n"), g_heartbeat_ms);
        vlog(STR("UseThreatIndicator:   {}\n"), g_use_threat ? 1 : 0);
        vlog(STR("UseStealthNoise:      {}\n"), g_use_stealth_noise_indicator ? 1 : 0);
        vlog(STR("UseFocusedEnemy:      {}\n"), g_use_focus ? 1 : 0);
        vlog(STR("UseIncomingDamage:    {}\n"), g_use_incoming_damage ? 1 : 0);
        vlog(STR("UseOutgoingDamage:    {}\n"), g_use_outgoing_damage ? 1 : 0);
        vlog(STR("ThreatStartMin:       {}\n"), g_threat_start_min);
        vlog(STR("ThreatKeepMin:        {}\n"), g_threat_keep_min);
        vlog(STR("IncomingDamageMs:     {}\n"), g_incoming_damage_ms);
        vlog(STR("OutgoingDamageMs:     {}\n"), g_outgoing_damage_ms);
        vlog(STR("ShowStatProgress:     {}\n"), g_enable_stat_progress_bootstrap ? 1 : 0);
        vlog(STR("DrawPlayerStats:      {}\n"), g_enable_draw_player_stats_bootstrap ? 1 : 0);
        vlog(STR("SleepVitalOverlay:    {}\n"), g_enable_sleep_vital_bootstrap ? 1 : 0);
        vlog(STR("BootstrapRetryMs:     {}\n"), g_debug_bootstrap_ms);
        vlog(STR("INI: SoporCombatSleep.ini (next to DLL)\n"));
        vlog(STR("==================================================\n\n"));
    }

    auto on_update() -> void override {}
};

extern "C"
{
__declspec(dllexport) CppUserModBase* start_mod() { return new SoporCombatSleep(); }
__declspec(dllexport) void uninstall_mod(CppUserModBase* mod) { delete mod; }
}
