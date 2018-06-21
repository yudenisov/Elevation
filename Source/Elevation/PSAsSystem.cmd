:: //***************************************************************************
:: // ***** Script Header *****
:: // =======================================================
:: // Elevation PowerToys for Windows Vista v1.1 (04/29/2008)
:: // =======================================================
:: //
:: // File:      PSAsSystem.cmd
:: //
:: // Purpose:   To provide a command to start a Windows Power Shell prompt running 
:: //            under the System context on Windows Vista.  
:: //
:: // Additional requirement:  "Elevate Command" PowerToy for Windows Vista
:: //                          must be installed and Sysinternals Suite must
:: //                          be installed in c:\ProgramData\Chocolatey\bin
:: //
:: // Usage:     PSAsSystem.cmd "<optional folder path>"
:: //
:: // Version:   1.0.0
:: // Date :     04/29/2008
:: //
:: // History:
:: // 1.0.0   04/29/2008  Created initial version.
:: //
:: // ***** End Header *****
:: //***************************************************************************

@echo Off

if exist "c:\ProgramData\Chocolatey\bin\psexec.exe" (
    if {%1}=={} (
        Elevate.cmd "c:\ProgramData\Chocolatey\bin\psexec.exe" -i -s -d "%SystemRoot%\system32\windowspowershell\v1.0\powershell.exe" -NoExit $host.ui.rawui.windowtitle = 'Windows PowerShell as SYSTEM'; $host.ui.rawui.ForegroundColor = 'Red'; $host.ui.rawui.BackgroundColor = 'Yellow'; Clear-Host
    ) else (
        Elevate.cmd "c:\ProgramData\Chocolatey\bin\psexec.exe" -i -s -d "%SystemRoot%\system32\windowspowershell\v1.0\powershell.exe" -NoExit Set-Location -LiteralPath '%~1'; $host.ui.rawui.windowtitle = 'Windows PowerShell as SYSTEM - %~1'; $host.ui.rawui.ForegroundColor = 'Red'; $host.ui.rawui.BackgroundColor = 'Yellow'; Clear-Host
    )
) else (
    echo "Please install the Sysinternals Suite to "c:\ProgramData\Chocolatey\bin".
    pause
)
