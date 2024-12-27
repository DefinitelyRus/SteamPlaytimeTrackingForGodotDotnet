@echo off
start "" "C:\Program Files (x86)\Steam\steamapps\common\Godot Engine\Godot_v4.3-stable_mono_win64.exe"
:keep_alive
timeout /t 600 >nul
goto keep_alive
