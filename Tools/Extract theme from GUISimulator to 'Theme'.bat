@echo off
cls
echo Extracting GUI Simulator "theme2" to "Theme"

set simulator_base_dir="GUI Simulator\"
set theme_base_dir="..\Theme\"

echo Clearing current Theme...
rmdir /S /Q %theme_base_dir%\fonts\ %theme_base_dir%\layout\ %theme_base_dir%\litegui\

echo Copying theme2 data to Theme...
xcopy %simulator_base_dir%\data\res\R3PRO\fonts\ %theme_base_dir%\fonts\ /E /Y
xcopy %simulator_base_dir%\data\res\R3PRO\layout\theme2\ %theme_base_dir%\layout\ /E /Y
xcopy %simulator_base_dir%\data\res\R3PRO\litegui\theme2\ %theme_base_dir%\litegui\ /E /Y

echo Extraction complete
pause