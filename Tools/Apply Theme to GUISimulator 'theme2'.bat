@echo off
cls
echo Copying "Theme" to GUI Simulator "theme2"

set simulator_base_dir="GUI Simulator\"
set theme_base_dir="..\Theme\"

echo Clearing current theme2...
rmdir /S /Q %simulator_base_dir%\data\res\R3PRO\layout\theme2\ %simulator_base_dir%\data\res\R3PRO\litegui\theme2\

echo Copying Theme data to theme2...
xcopy %theme_base_dir%\fonts\ %simulator_base_dir%\data\res\R3PRO\fonts\ /E /Y
xcopy %theme_base_dir%\layout\ %simulator_base_dir%\data\res\R3PRO\layout\theme2\ /E /Y
xcopy %theme_base_dir%\litegui\ %simulator_base_dir%\data\res\R3PRO\litegui\theme2\ /E /Y

echo Apply complete
pause