@echo off
：：for循环变量值不变，加以下条件开启延迟扩展，并使用叹号读取变量。
setlocal enabledelayedexpansion
set base=%~dp0
set lib_dir_base=%base%libs
set classpath=%base%classes;
cd %lib_dir_base%
for %%i in (*.jar) do (
set "classpath=!classpath!%lib_dir_base%\%%i;"
::echo %%i
echo !classpath!
)
echo %classpath%
java -classpath %classpath% StartServer
：:pause
