@echo off

REM Change this path if you changed your Steam app installation directory.
set "program=C:\Program Files (x86)\Steam\steamapps\common\Godot Engine\Godot_v4.3-stable_mono_win64.exe"

REM Starts the program and waits for it to close.
start "" /wait "%program%"

REM Exits the command prompt completely.
exit /b
