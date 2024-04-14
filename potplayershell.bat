@echo off
setlocal enabledelayedexpansion

:: 检查是否提供了URL参数
if "%~1"=="" (
    echo Usage: %~0 "encoded_url"
    exit /b
)

:: 设置要解码的URL变量
set "encodedURL=%~1"

:: 调用PowerShell进行URL解码
for /f "delims=" %%a in ('powershell -Command "$encodedURL = '%encodedURL%'; $decodedURL = [System.Net.WebUtility]::UrlDecode($encodedURL); Write-Output $decodedURL"') do (
    set "decodedURL=%%a"
)

::获取第一位数字，为0，则打开资源管理器，为1则打开播放器
set part1=!decodedURL:~10,1!
set part2=!decodedURL:~11!

::echo %decodedURL%
::echo !part1!
::echo !part2!


:: 输出解码后的URL
::echo Decoded URL: !decodedURL!
::start "" "C:\Green softs\PotPlayer\PotPlayerMini64.exe" "%decodedURL%"

if "!part1!"=="1" (
	:: 第一个数字是1，就打开potplayer
	start "" "C:\Green softs\PotPlayer\PotPlayerMini64.exe" "!part2!"
	goto over
)
:: 斜杠替换成反斜杠
set "newDecodedURL=!part2:/=\!"
if "!part1!"=="0" (
	
	:: 第一个数字是0，就打开资源管理器  
	set kk=%decodedURL%%newDecodedURL%
    start "" "%SystemRoot%\explorer.exe" "!newDecodedURL!"
	goto over
)
:: if条件语句结束标记
:over
endlocal
::pause