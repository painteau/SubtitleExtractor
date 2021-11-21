@echo off
setlocal ENABLEDELAYEDEXPANSION
for %%i in (*.*) do  for /l %%x  in (0,1,6) do (
echo,
echo extracting subtitle from %%i 
ffmpeg -y -v error -stats -i "%%i" -vn -an -dn -map 0:%%x "%%~ni."%%x".srt")
pause