:: //***************************************************************************
:: // ***** Script Header *****
:: // =======================================================
:: // Elevation PowerToys for Windows Vista v1.1 (04/29/2008)
:: // =======================================================
:: //
:: // File:      CmdAsSystem.cmd
:: //
:: // Purpose:   To provide a command to start a command prompt running under
:: //            the System context on Windows Vista.  
:: //
:: // Additional requirement:  "Elevate Command" PowerToy for Windows Vista
:: //                          must be installed and Sysinternals Suite must
:: //                          be installed in c:\ProgramData\Chocolatey\bin
:: //
:: // Usage:     CmdAsSystem.cmd "<optional folder path>"
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

set par=%CD%
set var=%1


if not exist "c:\ProgramData\Chocolatey\bin\psexec.exe" goto Stop
if not defined var goto Empty
goto NoneEmpty

:NoneEmpty
set par=%~1
goto Empty

:Empty
Elevate.cmd "c:\ProgramData\Chocolatey\bin\psexec.exe" -i -s -d "%SystemRoot%\system32\cmd.exe" /k "(cd /d "%par% & color ec & title "CMD Prompt as SYSTEM")"
rem exit 0
goto Finish
echo "Please install the Sysinternals Suite to "c:\ProgramData\Chocolatey\bin"
pause
rem exit 1
:Finish
