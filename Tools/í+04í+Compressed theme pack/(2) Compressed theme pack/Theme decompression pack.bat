@echo off
cls
echo HiBy R3PRO Theme pack decompression tool.
echo Usage£º
echo Put the theme pack in the same directory as the tool
echo Files with the same name will be overwritten
set ver=
set /p ver=Enter a subject name:

7z x -y %ver%.t
