cls
@echo off
echo  (c/z) ?
set/p "choice=>"
if %choice%==c goto complete
if %choice%==z goto cfg

:complete
cd\
cd E:\Knlwg\Batch-File-Programming
if EXIST "a" goto unlock
if EXIST COMPLETED goto lock
:lock
ren COMPLETED "a"
attrib +h +s "a"
goto end
:unlock
echo enter key
set/p "key=>"
if NOT %key%== qwer goto end
attrib -h -s "a"
ren "a" COMPLETED
echo unlock successfully....
pause
goto end









:cfg
cd\
cd E:\GAMES\Dota 2\dota\cfg
if EXIST "a" goto unlock
if EXIST z goto lock
:lock
ren z "a"
attrib +h +s "a"
goto end
:unlock
echo enter key
set/p "key=>"
if NOT %key%== qwer goto end
attrib -h -s "a"
ren "a" z
echo unlock successfully....
pause
goto end
	
:end 

