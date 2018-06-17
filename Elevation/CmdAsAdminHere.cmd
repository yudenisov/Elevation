:: //***************************************************************************
:: // ***** Script Header *****
:: // =======================================================
:: // Elevation PowerToys for Windows Vista v1.1 (04/29/2008)
:: // =======================================================
:: //
:: // File:      CmdAsAdmin.cmd
:: //
:: // Purpose:   To provide a command to start a command prompt running "As
:: //            Administrator" on Windows Vista.  
:: //
:: // Additional requirement:  "Elevate Command" PowerToy for Windows Vista
:: //                          must be installed
:: //
:: // Usage:     CmdAsAdmin.cmd "<optional folder path>"
:: //
:: // Version:   1.0.0
:: // Date :     04/29/2008
:: //
:: // History:
:: // 1.0.0   04/29/2008  Created initial version.
:: //
:: // ***** End Header *****
:: //***************************************************************************

@echo off
set par=%CD%
set var=%1

if not defined var goto Finish
goto NoneEmpty

:NoneEmpty
set par=%~1
goto Finish

:Finish
Elevate.cmd "%SystemRoot%\system32\cmd.exe" /k cd /d "%par%"
