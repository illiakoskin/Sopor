[Setup]
AppId={{A4E6ECBE-9C43-469A-9D98-CDB8C0C0CB63}
AppName=Sopor
AppVersion=1.0.0
AppPublisher=ikoskin
WizardStyle=modern
DefaultDirName={code:GetDefaultDir}
DefaultGroupName=Sopor
DisableProgramGroupPage=yes
Compression=lzma2/ultra64
SolidCompression=yes
LZMANumBlockThreads=4
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputBaseFilename=Sopor_Installer
OutputDir=output
Uninstallable=no
PrivilegesRequired=admin
ChangesAssociations=no

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Messages]
russian.WelcomeLabel2=This installer will install the Sopor mod for S.T.A.L.K.E.R. 2 and add UE4SS when needed.
russian.SelectDirDesc=Select your S.T.A.L.K.E.R. 2 game folder.
russian.SelectDirLabel3=The folder should contain the "Stalker2" subfolder. Usually this is the game root.

[Files]
Source: "DEFAULT\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsVersionSelected('DEFAULT')
Source: "DEFAULT_NO_FAINT\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsVersionSelected('DEFAULT_NO_FAINT')
Source: "DEFAULT_AND_CONSUMABLES\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsVersionSelected('DEFAULT_AND_CONSUMABLES')
Source: "CANCER\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsVersionSelected('CANCER')
Source: "FATIGUE_ONLY\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsVersionSelected('FATIGUE_ONLY')
Source: "FATIGUE_ONLY_NO_FAINT\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsVersionSelected('FATIGUE_ONLY_NO_FAINT')

Source: "Binaries\Win64\ue4ss\Mods\SoporCombatSleep\*"; DestDir: "{app}\Stalker2\Binaries\Win64\ue4ss\Mods\SoporCombatSleep"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: ShouldInstallOnlySoporMod
Source: "Binaries\Win64\dwmapi.dll"; DestDir: "{app}\Stalker2\Binaries\Win64"; Flags: ignoreversion; Check: ShouldInstallFullUE4SS
Source: "Binaries\Win64\ue4ss\*"; DestDir: "{app}\Stalker2\Binaries\Win64\ue4ss"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: ShouldInstallFullUE4SS

[Code]
var
  VersionPage: TInputOptionWizardPage;
  VersionIds: TStringList;
  VersionDescriptionLabel: TNewStaticText;

function GetDefaultDir(Param: string): string;
begin
  if DirExists(ExpandConstant('{autopf}\Steam\steamapps\common\S.T.A.L.K.E.R. 2 Heart of Chornobyl')) then
    Result := ExpandConstant('{autopf}\Steam\steamapps\common\S.T.A.L.K.E.R. 2 Heart of Chornobyl')
  else if DirExists(ExpandConstant('{autopf32}\Steam\steamapps\common\S.T.A.L.K.E.R. 2 Heart of Chornobyl')) then
    Result := ExpandConstant('{autopf32}\Steam\steamapps\common\S.T.A.L.K.E.R. 2 Heart of Chornobyl')
  else
    Result := ExpandConstant('{autopf}');
end;

function GetVersionDescription(const VersionId: string): string;
begin
  if VersionId = 'DEFAULT' then
    Result := 'Base version of Sopor. Standard fatigue and sleep behavior.'
  else if VersionId = 'DEFAULT_NO_FAINT' then
    Result := 'Default Sopor balance, but disables fainting or blackout behavior.'
  else if VersionId = 'DEFAULT_AND_CONSUMABLES' then
    Result := 'Default Sopor balance with additional consumables integration.'
  else if VersionId = 'CANCER' then
    Result := 'Default plus consumables and the most punishing survival preset.'
  else if VersionId = 'FATIGUE_ONLY' then
    Result := 'Only fatigue-related changes. Minimal impact on the rest of the system.'
  else if VersionId = 'FATIGUE_ONLY_NO_FAINT' then
    Result := 'Fatigue-only preset with fainting or blackout behavior disabled.'
  else
    Result := '';
end;

function GetVersionCaption(const VersionId: string): string;
begin
  if VersionId = 'DEFAULT' then
    Result := 'Default'
  else if VersionId = 'DEFAULT_NO_FAINT' then
    Result := 'Default - No Faint'
  else if VersionId = 'DEFAULT_AND_CONSUMABLES' then
    Result := 'Default + Consumables'
  else if VersionId = 'CANCER' then
    Result := 'Cancer'
  else if VersionId = 'FATIGUE_ONLY' then
    Result := 'Fatigue Only'
  else if VersionId = 'FATIGUE_ONLY_NO_FAINT' then
    Result := 'Fatigue Only - No Faint'
  else
    Result := VersionId;
end;

function SelectedVersionId: string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to VersionIds.Count - 1 do
  begin
    if VersionPage.Values[I] then
    begin
      Result := VersionIds[I];
      Exit;
    end;
  end;
end;

procedure UpdateVersionDescription;
var
  VersionId: string;
begin
  VersionId := SelectedVersionId;
  if VersionId = '' then
    VersionDescriptionLabel.Caption := 'No version selected.'
  else
    VersionDescriptionLabel.Caption :=
      GetVersionCaption(VersionId) + #13#10#13#10 +
      GetVersionDescription(VersionId);
end;

function IsVersionSelected(const VersionId: string): Boolean;
begin
  Result := SelectedVersionId = VersionId;
end;

function TargetHasUE4SS: Boolean;
begin
  Result :=
    FileExists(ExpandConstant('{app}\Stalker2\Binaries\Win64\dwmapi.dll')) or
    FileExists(ExpandConstant('{app}\Stalker2\Binaries\Win64\ue4ss\UE4SS.dll'));
end;

function ShouldInstallFullUE4SS: Boolean;
begin
  Result := not TargetHasUE4SS;
end;

function ShouldInstallOnlySoporMod: Boolean;
begin
  Result := TargetHasUE4SS;
end;

function IsValidGameDir(const Dir: string): Boolean;
begin
  Result :=
    DirExists(AddBackslash(Dir) + 'Stalker2') and
    DirExists(AddBackslash(Dir) + 'Stalker2\Binaries\Win64') and
    DirExists(AddBackslash(Dir) + 'Stalker2\Content\Paks');
end;

function IsDirectStalker2Dir(const Dir: string): Boolean;
begin
  Result :=
    DirExists(AddBackslash(Dir) + 'Binaries\Win64') and
    DirExists(AddBackslash(Dir) + 'Content\Paks');
end;

procedure NormalizeSelectedDir;
begin
  if IsDirectStalker2Dir(WizardDirValue) then
    WizardForm.DirEdit.Text := ExtractFileDir(RemoveBackslashUnlessRoot(WizardDirValue));
end;

procedure VersionSelectionChanged(Sender: TObject);
begin
  UpdateVersionDescription;
end;

procedure InitializeWizard;
begin
  VersionIds := TStringList.Create;

  VersionPage := CreateInputOptionPage(
    wpSelectDir,
    'Version Selection',
    'Select the Sopor version to install',
    'Choose one preset. The description below updates when the selection changes.',
    True,
    False
  );

  VersionIds.Add('DEFAULT');
  VersionPage.Add(GetVersionCaption('DEFAULT'));
  VersionIds.Add('DEFAULT_NO_FAINT');
  VersionPage.Add(GetVersionCaption('DEFAULT_NO_FAINT'));
  VersionIds.Add('DEFAULT_AND_CONSUMABLES');
  VersionPage.Add(GetVersionCaption('DEFAULT_AND_CONSUMABLES'));
  VersionIds.Add('CANCER');
  VersionPage.Add(GetVersionCaption('CANCER'));
  VersionIds.Add('FATIGUE_ONLY');
  VersionPage.Add(GetVersionCaption('FATIGUE_ONLY'));
  VersionIds.Add('FATIGUE_ONLY_NO_FAINT');
  VersionPage.Add(GetVersionCaption('FATIGUE_ONLY_NO_FAINT'));
  VersionPage.Values[0] := True;

  VersionPage.CheckListBox.OnClickCheck := @VersionSelectionChanged;

  VersionDescriptionLabel := TNewStaticText.Create(VersionPage.Surface);
  VersionDescriptionLabel.Parent := VersionPage.Surface;
  VersionDescriptionLabel.Left := ScaleX(0);
  VersionDescriptionLabel.Top := VersionPage.CheckListBox.Top + VersionPage.CheckListBox.Height + ScaleY(12);
  VersionDescriptionLabel.Width := VersionPage.SurfaceWidth;
  VersionDescriptionLabel.Height := ScaleY(72);
  VersionDescriptionLabel.AutoSize := False;
  VersionDescriptionLabel.WordWrap := True;

  UpdateVersionDescription;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;

  if CurPageID = wpSelectDir then
  begin
    NormalizeSelectedDir;
    if not IsValidGameDir(WizardDirValue) then
    begin
      Result := MsgBox(
        'Selected folder does not look like the S.T.A.L.K.E.R. 2 game root.'#13#10#13#10 +
        'Expected structure:'#13#10 +
        WizardDirValue + '\Stalker2\Binaries\Win64'#13#10#13#10 +
        'Continue anyway?',
        mbConfirmation,
        MB_YESNO
      ) = IDYES;
    end;
  end
  else if CurPageID = VersionPage.ID then
  begin
    if SelectedVersionId = '' then
    begin
      MsgBox('Select one Sopor version before continuing.', mbError, MB_OK);
      Result := False;
    end;
  end;
end;

function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo,
  MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: string): string;
var
  UE4SSMode: string;
begin
  if TargetHasUE4SS then
    UE4SSMode := 'Existing UE4SS detected. Installer will copy only SoporCombatSleep to ue4ss\Mods.'
  else
    UE4SSMode := 'UE4SS not detected. Installer will copy the full UE4SS package and SoporCombatSleep.';

  Result :=
    MemoDirInfo + NewLine + NewLine +
    'Sopor version:' + NewLine +
    GetVersionCaption(SelectedVersionId) + NewLine +
    GetVersionDescription(SelectedVersionId) + NewLine + NewLine +
    'UE4SS:' + NewLine +
    UE4SSMode;
end;

procedure DeinitializeSetup;
begin
  VersionIds.Free;
end;
