@echo off
setlocal

:: path to counter strike directory
set config_path=C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\game\csgo\cfg

echo [installing ez_cfg configuration]
copy /y "autoexec.cfg" "%config_path%\autoexec.cfg%"
xcopy "ez_cfg\*" "%config_path%\ez_cfg\%" /E /I /Y
 
echo [ez_cfg installed successfully]
pause
endlocal
