; -- Elevation.iss --
;
; This script Create Installator and deinstallator of the
; Exponenta Styler plugin -- Elevation

[Setup]
AppName=Elevation Exponenta Plugin
AppVersion=2.0.5
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%Elevation|c:\Elevation}
MinVersion=0,6.0
SetupLogging=True
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
;OutputBaseFilename=ElevationSetupRepack
OutputBaseFilename=ElevationSetup-2.0.5
AppId={{9A2EE15F-C77A-4C6D-A2E1-3A2CB745D915}
RestartIfNeededByRun=False
AppPublisher=New Internet Technologies Inc.
AppUpdatesURL=http://anticriminalonline.ru/Exponenta/ElevationSetupRepack.exe
AppContact=yudenisov@mail.ru
AppSupportPhone=+79047071125
VersionInfoVersion=2.0.5
VersionInfoProductName=Elevation PowerToys
VersionInfoProductVersion=2.0
ArchitecturesInstallIn64BitMode=x64

[Files]
Source: "*.bat"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.cfg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.chm"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.cmd"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.cnf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.dll"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.doc"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.inf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.ini"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.hta"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.reg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.rtf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.sh"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.txt"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.js"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.vbs"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.xml"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: Elevation.gadget; DestDir: "{app}"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: ElevationPowertoys.ico; DestDir: "{app}"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: descript.ion; DestDir: "{app}"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "ELEVATION"; ValueData: "{app}"
;Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: noerror; ValueType: string; ValueName: "PATH"; ValueData: "{olddata};{app}"

