@echo off
if not exist folder goto z
if not exist asd goto lock

:z
if exist asd goto unlock
md folder
goto end

:lock
ren folder asd
attrib +h +s asd
cacls asd /e /d jp
echo locked;)
goto end

:unlock
echo ENTER KEY
set/p "x=>"
if not %x% == asdfgh goto end
cacls asd /e /p jp:f
attrib -h -s asd
ren asd folder
goto end

:end 
pause