@echo off
echo press 1 to disable the Logitech DFGT
echo press 2 to enable the Logitech DFGT
echo press anything else to exit
echo ---------------------------------------
set /p x=""
if %x%==1 goto disable
if %x%==2 goto enable
if %x%==0 goto end
exit

:disable
cd /D D:\devcon\i386
start devcon disable "@USB\ROOT_HUB\4&f0a46d8&0"
echo press 1 to disable the Logitech DFGT
echo press 2 to enable the Logitech DFGT
echo press 0 to exit
echo ---------------------------------------
set /p x=""
if %x%==1 goto disable
if %x%==2 goto enable
if %x%==0 goto end

:enable
cd /D D:\devcon\i386
start devcon enable "@USB\ROOT_HUB\4&F0A46D8&0"
echo press 1 to disable the Logitech DFGT
echo press 2 to enable the Logitech DFGT
echo press 0 to exit
echo ---------------------------------------
set /p x=""
if %x%==1 goto disable
if %x%==2 goto enable
if %x%==0 goto end

:end
exit
