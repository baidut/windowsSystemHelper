
::http://superuser.com/questions/916497/how-would-i-query-then-toggle-windows-updates-off-and-on-via-a-batch-file
@echo off
@title Windows Update Status Tool
IF "%~1"=="" goto ERROR
IF "%~1"=="q" goto Q
IF "%~1"=="disable" goto DISABLE
IF "%~1"=="stop" goto STOP
IF "%~1"=="start" goto START
IF "%~1"=="enable" goto ENABLE
:Q
sc query wuauserv
pause
goto EOF
:DISABLE
sc config wuauserv start=disabled
echo Done!
pause
goto EOF
:STOP
sc stop wuauserv
goto EOF
:START
sc start wuauserv
goto EOF
:ENABLE
sc config wuauserv start=auto
echo Done!
pause
goto EOF
:ERROR
echo Invalid command! Valid syntax is: q, disable, enable, stop, start.
pause
goto EOF
:EOF
