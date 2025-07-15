@echo off

:: Variables
set "program=Godot_v4.4.1-stable_mono_win64.exe"
set "godot_path=C:\Program Files (x86)\Steam\steamapps\common\Godot Engine\%program%"

:: Start Godot
start "" "%godot_path%" --logfile wrapper_launch.log

:: Check if still running
:check_running
timeout /t 60 >nul

tasklist /fi "imagename eq %program%" | find /i "%program%" >nul

if errorlevel 1 ( exit /b )
else ( goto check_running )
