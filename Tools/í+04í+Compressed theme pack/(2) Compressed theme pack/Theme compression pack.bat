@echo off
cls
echo --------------------------HiBy R3PRO Theme compression tool.---------------------
echo=
echo Step one: Please enter a name of the theme package on this interface, there can be no spaces between the names, do not need to enter the suffix name!
echo Step two£ºPress the Enter button (Enter).
echo=
echo Generated XXX.t, Support PC rename, for exmple: HiBy.t, haibei.t
echo=
echo=
echo ------------------------------Use theme pack--------------------------------
echo=
echo (1):Manually create a theme folder in the SD card root directory.
echo (2):Copy the generated theme package *.t into the theme directory of the SD card.
echo (3):Insert the SD card containing the theme pack into the R3PRO machine.
echo (4):On the R3PRO, click "System Settings" - "Theme Style" - "Use custom Themes" and select the appropriate theme.
echo=
set ver=
set /p ver=Enter a subject name:

set base_dir="../../¡¾03¡¿Instruction directory"

echo Data copy...
rmdir /S /Q font layout theme  >nul 2>nul
del font layout theme  >nul 2>nul
mkdir font layout theme
xcopy %base_dir%\data\res\R3PRO\fonts font /E /Y  >nul 2>nul
xcopy %base_dir%\data\res\R3PRO\layout\theme2 layout /E /Y >nul 2>nul
xcopy %base_dir%\data\res\R3PRO\litegui\theme2 theme /E /Y >nul 2>nul

echo Generated...
7z a -tzip -mx0 %ver%.t font layout theme version.txt  >nul 2>nul

echo Generated complete

rmdir /S /Q font layout theme  >nul 2>nul
del font layout theme  >nul 2>nul

pause
