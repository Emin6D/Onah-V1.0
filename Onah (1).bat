@echo off
cls
chcp 65001 > nul
mode con cols=87 lines=20
title ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤOnah 1.0
color F
set hrs=%time:~0,2%
set mns=%time:~3,2%
set scs=%time:~6,2%
set mls=%time:~9,2%
set nmt=%time:~0,8%
echo.
Call :Color 8 "Onah 1.0"
echo.
Call :Color 8 "Copyrights Licence Onah "
echo.
goto main
:Color

SetLocal EnableExtensions EnableDelayedExpansion
Set "Text=%~2"
If Not Defined Text (Set Text=^")
Subst `: "!Temp!" >Nul &`: &Cd \
If Not Exist `.7 (
Echo(|(Pause >Nul &Findstr "^" >`)
Set /P "=." >>` <Nul
For /F "delims=;" %%# In (
'"Prompt $H;&For %%_ In (_) Do Rem"') Do (
Set /P "=%%#%%#%%#" <Nul >`.3
Set /P "=%%#%%#%%#%%#%%#" <Nul >`.5
Set /P "=%%#%%#%%#%%#%%#%%#%%#" <Nul >`.7))
Set /P "LF=" <` &Set "LF=!LF:~0,1!"
For %%# in ("!LF!") Do For %%_ In (
\ / :) Do Set "Text=!Text:%%_=%%~#%%_%%~#!"
For /F delims^=^ eol^= %%# in ("!Text!") Do (
If #==#! SetLocal DisableDelayedExpansion
If \==%%# (Findstr /A:%~1 . \` Nul
Type `.3) Else If /==%%# (Findstr /A:%~1 . /.\` Nul
Type `.5) Else (Echo %%#\..\`>`.dat
Findstr /F:`.dat /A:%~1 .
Type `.7))
If "\n"=="%~3" (Echo()
goto :Eof
:main
echo.
Call :Color A " < "
Call :Color 4 "%username% "
Call :Color A "> "
Call :Color E "~ "
set /p whatuwant=
if %whatuwant% == onah goto onahinfo
if %whatuwant% == pc goto pcinfo
if %whatuwant% == help goto helponah
if %whatuwant% == history goto historyonah
if %whatuwant% == into goto onahinto
if %whatuwant% == clear goto clear
Call :Color F "Onah / Command not found :"
Call :Color 4 "%whatuwant%"
echo.
goto main
:onahinfo
cls
Call :Color 8 " Onah is a CMD Shell for users wanting to know further about their pc or others pc's"
Call :Color 8 " Onah was also made the 14/11/2021 at 4 PM"
echo.
Call :Color 4 "Disclaimer : We are not responsible of any actions you do with our shell"
pause > nul
cls
goto main
:pcinfo
cls
Call :Color A "Username :" 
Call :Color 4 " %username%"
echo.
Call :Color A "OS System :" 
Call :Color 4 " %os%"
echo.
Call :Color A "Virtual Machine :"
Call :Color 4 " No"
echo.
Call :Color A "Terminal :"
Call :Color 4 " CMD"
pause > nul
cls
goto main
:clear
cls
goto main
:helponah
cls
Call :Color A "help"
Call :Color E " /"
Call :Color 4 " Shows basic help for Onah"
echo.
Call :Color A "pc" 
Call :Color E " /"
Call :Color 4 " Shows basic inforation about the pc"
echo.
Call :Color A "onah"
Call :Color E " /"
Call :Color 4 " Shows basic informations about Onah"
echo.
Call :Color A "history"
Call :Color E " /"
Call :Color 4 " Shows recently used files"
echo.
Call :Color A "clear"
Call :Color E " /"
Call :Color 4 " Clears all messages in the terminal"
echo.
Call :Color A "into"
Call :Color E " /"
Call :Color 4 " Gets into the directory"
pause > nul
cls
goto main
:historyonah
cls
tree
pause > nul
goto main
:onahinto
cls
set /p directory=Enter directory : 
cd %directory%
goto main