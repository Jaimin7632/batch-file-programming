cls
@echo off
cd\
cd E:\GAMES\Dota 2\dota\cfg
if EXIST "a" goto unlock
if EXIST z goto lock

:lock
ren z "a"
attrib +h  "a"
cacls a /t /e /D JP
echo k.......
pause
goto end

:unlock
echo enter key
set/p "key=>"
if NOT %key%== qwer goto end
cacls a /t /e /p JP:f
attrib -h  "a"
ren "a" z
echo unlock successfully....
pause
goto end
	
:end 

