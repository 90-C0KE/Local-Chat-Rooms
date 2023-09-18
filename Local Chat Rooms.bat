
::oemcp=$(reg.exe query "HKLM\\SYSTEM\\CurrentControlSet\\Control\\Nls\\CodePage" /v OEMCP 2>&1 | sed -n 3p | sed -e 's|\r||g' | grep -o '[[:digit:]]*')
::chcp.com $oemcp
::powershell.exe ...
::chcp.com 65001

:: string encryption link: https://stackoverflow.com/questions/31444555/how-to-encrypt-a-string-and-save-it-in-a-file-and-read-the-decrypted-string-from

:: To ensure the 'Raster Fonts' issue doesn't occur, use command 'chcp 65001 > nul' before echoing ascii
:: and use command 'chcp 850 > nul' after echoing commands

:: Shortcuts to the 'chcp commands':
set "chcp_on=chcp 65001 > nul"
set "chcp_off=chcp 850 > nul"
::::::::::::::::::::::::::::::::::::
setlocal EnableDelayedExpansion
set "charSet=abcdefghijklmnopqrstuvwxyz1234567890@#$*(.,- \/"
set i=0
for %%a in (
    UDFM45 H21DGF FDH56D FGS546 JUK4JH
    ERG54S T5H4FD RG641G RG4F4D RT56F6
    VCBC3B F8G9GF FD4CJS G423FG F45GC2
    TH5DF5 CV4F6R XF64TS X78DGT TH74SJ
    BCX6DF FG65SD 4KL45D GFH3F2 GH56GF
    45T1FG D4G23D GB56FG SF45GF P4FF12
    F6DFG1 56FG4G USGFDG FKHFDG IFGJH6
    87H8G7 G25GHF 45FGFH 75FG45 54GDH5
    45F465 HG56FG DF56H4 F5JHFH SGF4HF
    45GH45 56H45G ) do (
   for %%i in (!i!) do for /F "delims=" %%c in ("!charSet:~%%i,1!") do (
      set "ENC[%%c]=%%a"
      set "DEC[%%a]=%%c"
   )
   set /A i+=1
)

setlocal DisableDelayedExpansion

MODE con:cols=80 lines=30

set _a=set&set "_b= "&set _c==
%_a%%_b%_%_c%r^e^m

%_%%_b%^|---------------------------------------------
%_%%_b%^| ██╗░░░░░░█████╗░░█████╗░░█████╗░██╗░░░░░
%_%%_b%^| ██║░░░░░██╔══██╗██╔══██╗██╔══██╗██║░░░░░
%_%%_b%^| ██║░░░░░██║░░██║██║░░╚═╝███████║██║░░░░░
%_%%_b%^| ██║░░░░░██║░░██║██║░░██╗██╔══██║██║░░░░░
%_%%_b%^| ███████╗╚█████╔╝╚█████╔╝██║░░██║███████╗
%_%%_b%^| ╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝
%_%%_b%^|
%_%%_b%^| ░█████╗░██╗░░██╗░█████╗░████████╗
%_%%_b%^| ██╔══██╗██║░░██║██╔══██╗╚══██╔══╝
%_%%_b%^| ██║░░╚═╝███████║███████║░░░██║░░░
%_%%_b%^| ██║░░██╗██╔══██║██╔══██║░░░██║░░░
%_%%_b%^| ╚█████╔╝██║░░██║██║░░██║░░░██║░░░
%_%%_b%^| ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░
%_%%_b%^|
%_%%_b%^| ██████╗░░█████╗░░█████╗░███╗░░░███╗░██████╗
%_%%_b%^| ██╔══██╗██╔══██╗██╔══██╗████╗░████║██╔════╝
%_%%_b%^| ██████╔╝██║░░██║██║░░██║██╔████╔██║╚█████╗░
%_%%_b%^| ██╔══██╗██║░░██║██║░░██║██║╚██╔╝██║░╚═══██╗
%_%%_b%^| ██║░░██║╚█████╔╝╚█████╔╝██║░╚═╝░██║██████╔╝
%_%%_b%^| ╚═╝░░╚═╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═════╝░
%_%%_b%^|---------------------------------------------
%_%%_b%^| Source Code - By 1k0de
%_%%_b%^| (c) All rights reserved.
%_%%_b%^|---------------------------------------------

set "_errorCode=0"
set "_localMode=false"

Setlocal DisableDelayedExpansion

::: { Creates variable /AE = Ascii-27 escape code.
::: - %/AE% can be used  with and without DelayedExpansion.
    For /F %%a in ('echo prompt $E ^| cmd')do set "/AE=%%a"
::: }

(Set \n=^^^
%=Newline DNR=%
)
::: / Color Print Macro -
::: Usage: %Print%{RRR;GGG;BBB}text to output
::: \n at the end of the string echo's a new line
::: valid range for RGB values: 0 - 255
  Set Print=For %%n in (1 2)Do If %%n==2 (%\n%
    For /F "Delims=" %%G in ("!Args!")Do (%\n%
      For /F "Tokens=1 Delims={}" %%i in ("%%G")Do Set "Output=%/AE%[0m%/AE%[38;2;%%im!Args:{%%~i}=!"%\n%
      ^< Nul set /P "=!Output:\n=!%/AE%[0m"%\n%
      If "!Output:~-2!"=="\n" (Echo/^&Endlocal)Else (Endlocal)%\n%
    )%\n%
  )Else Setlocal EnableDelayedExpansion ^& Set Args=
::: / Erase Macro -
::: Usage: %Erase%{string of the length to be erased}
  Set Erase=For %%n in (1 2)Do If %%n==2 (%\n%
    For /F "Tokens=1 Delims={}" %%G in ("!Args!")Do (%\n%
      Set "Nul=!Args:{%%G}=%%G!"%\n%
      For /L %%# in (0 1 100) Do (If Not "!Nul:~%%#,1!"=="" ^< Nul set /P "=%/AE%[D%/AE%[K")%\n%
    )%\n%
    Endlocal%\n%
  )Else Setlocal EnableDelayedExpansion ^& Set Args=

title Local Chat Rooms - Client

set "_collab=P:\Composite\All Students\"

if "%_localMode%" == "true" (
    set "_collab=All Students"
)

set "_localData_=%_collab%\__LOCAL_CHAT_ROOM_DATA"

set "_errorCode=103"

@echo off
cls

goto load_app
goto _crash_

:load_app
%chcp_on%
cls
echo.
echo    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo    ░░:  Loading: Local Chat Rooms   :░░
if "%_localMode%" == "true" (
	echo    ░░:  ^( Running in Local Mode ^)   :░░
)
echo    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ping localhost -n 2 > nul
echo.
::make load effect
%PRINT%{255;255;255}   Searching for data...             0%%
ping localhost -n 2 > nul
if exist "%_collab%" (
	%ERASE%{              }
	%PRINT%{255;255;255} █████      50%%
) else (
	%PRINT%{255;255;255}\n
	%PRINT%{255;255;255}   Error: Cannot find Collaboration Folder^^!\n
	echo.
	echo    [ Press Any Key To Exit ]
	pause > nul
	exit
)
ping localhost -n 2 > nul
if not exist "%_localData_%" (
	mkdir "%_localData_%"
	mkdir "%_localData_%\__users__"
)
if not exist "%_localData_%\__users__" (
    mkdir "%_localData_%\__users__"
)
%ERASE%{         }
%PRINT%{255;255;255}█████ 100%%\n
ping localhost -n 2 > nul
%PRINT%{255;255;255}   Loading complete...
ping localhost -n 2 > nul
goto _startMenu
goto _crash_

:_startMenu
SETLOCAL EnableDelayedExpansion
%_a%%_b%"say%_c%echo%_b%"
cls
call :writeTitle
set "_startInput="
%_a%%_b%/p%_b%"_startInput%_c%Option > "

set /A _splitCount=1

set "_action=nil"
set "_arg1=nil"
set "_arg2=nil"

for %%a in (!_startInput!) do (
	if !_splitCount! == 1 (
		set "_action=%%a"
		if "%%a" == "" ( set "_action=nil" )
		if "%%a" == "1" (
			set "_action=_login_"
		)
		if "%%a" == "2" (
			set "_action=_register_"
		)
		if "%%a" == "$redirect" (
			set "_action=_redirect_"
		)
	)
	if !_splitCount! == 2 (
		set "_arg1=%%a"
	)
	if !_splitCount! == 3 (
		set "_arg2=%%a"
	)
	set/A _splitCount+=1)

:: echo Action: !_action! ^| Arg 1: !_arg1! ^| Arg 2: !_arg2! & pause > nul

set "_consoleUser=nil"

if "!_action!" == "_redirect_" (
	if "!_arg1!" == "/path:c_panel" (
		if "!_arg2!" == "/user:system" (
			set "_consoleUser=system"
			goto _console_
		)
		if "!_arg2!" == "/user:default" (
			set "_consoleUser=default"
			goto _console_
		)
		goto failed_query_redirect_nilUser
	)
	goto failed_query_redirect
)

if "!_action!" == "_register_" (
	goto _lcr_REGISTER
)

if "!_action!" == "_login_" (
	goto _lcr_LOGIN

)

goto failed_query_main
goto _crash_

:failed_query_main
cls
echo.
echo [ OPTION INVALID ]
echo -- Press any key to return --
pause > nul
goto _startMenu
goto _crash_

:failed_query_redirect
cls
echo.
echo [ ($redirect): must have "path" and "user" arguments. ]
echo -- Press any key to return --
pause > nul
goto _startMenu
goto _crash_

:failed_query_redirect_nilUser
cls
echo.
echo [ (Control Panel): must specifiy a valid user. ]
echo -- Press any key to return --
pause > nul
goto _startMenu
goto _crash_

:_console_
cls
echo Console...
echo User: %_consoleUser%
pause > nul
goto _crash_

:_lcr_LOGIN
%chcp_on%
set "login_userInput="
set "login_passInput="
set "pass_contents="
cls
%say%╔═════════════════════════════════════════════╗
%say%║            Local Chat Rooms 1.0             ║
%say%╠═════════════════════════════════════════════╣
%say%║    ██╗░░░░░░█████╗░░██████╗░██╗███╗░░██╗    ║
%say%║    ██║░░░░░██╔══██╗██╔════╝░██║████╗░██║    ║
%say%║    ██║░░░░░██║░░██║██║░░██╗░██║██╔██╗██║    ║
%say%║    ██║░░░░░██║░░██║██║░░╚██╗██║██║╚████║    ║
%say%║    ███████╗╚█████╔╝╚██████╔╝██║██║░╚███║    ║
%say%║    ╚══════╝░╚════╝░░╚═════╝░╚═╝╚═╝░░╚══╝    ║
%say%╚═════════════════════════════════════════════╝
echo.
%chcp_off%
set /p "login_userInput=Username: "
set "psCommand=powershell -Command "$pword = read-host 'Password' -AsSecureString ; ^
 $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "login_passInput=%%p"
ping localhost -n 2 > nul
echo.
if not exist "%_localData_%\__users__\!login_userInput!" (
    echo Incorrect username or password^^!
    echo [ Press Any Key ]
    pause > nul
    goto _lcr_LOGIN
)
if not exist "%_localData_%\__users__\!login_userInput!\u_sec.dll"  (
        echo Error: Data for user: !login_userInput! cannot be retrieved. Please report this error.
        echo [ Press Any Key ]
        pause > nul
        goto _lcr_LOGIN
)
set /p pass_contents=<"%_localData_%\__users__\!login_userInput!\u_sec.dll"
if "!login_passInput!" == "!pass_contents!" (
    echo Logging in...
) else (
    echo Incorrect username or password^^!
    echo [ Press Any Key ]
    pause > nul
    goto _lcr_LOGIN
)
ping localhost -n 2 > nul
goto _lcr_main_menu_
goto _crash_

:_lcr_REGISTER
%chcp_on%
set "REG_newUser="
set "REG_newPass="
set "REG_confirm="
cls
%say%╔═════════════════════════════════════════════╗
%say%║            Local Chat Rooms 1.0             ║
%say%╠═════════════════════════════════════════════╣
%say%║ ░██████╗██╗░██████╗░███╗░░██╗  ░░░░░░       ║
%say%║ ██╔════╝██║██╔════╝░████╗░██║  ░░░░░░       ║
%say%║ ╚█████╗░██║██║░░██╗░██╔██╗██║  █████╗       ║
%say%║ ░╚═══██╗██║██║░░╚██╗██║╚████║  ╚════╝       ║
%say%║ ██████╔╝██║╚██████╔╝██║░╚███║  ░░░░░░       ║
%say%║ ╚═════╝░╚═╝░╚═════╝░╚═╝░░╚══╝  ░░░░░░       ║
%say%║ ██╗░░░██╗██████╗░                           ║
%say%║ ██║░░░██║██╔══██╗                           ║
%say%║ ██║░░░██║██████╔╝                           ║
%say%║ ██║░░░██║██╔═══╝░                           ║
%say%║ ╚██████╔╝██║░░░░░                           ║
%say%║ ░╚═════╝░╚═╝░░░░░                           ║
%say%╚═════════════════════════════════════════════╝
echo.
%chcp_off%
set /p "REG_newUser=Create a Username: "
if "!REG_newUser!" == "" (
	echo.
	echo Username cannot be empty.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
if "!REG_newUser!" == "/" (
	echo.
	echo Invalid characters in username.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
echo:!REG_newUser!|findstr /i "^[0-9A-Z.-_]*$" >Nul 2>&1 ||(
    echo.
	echo Invalid characters in username.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
if exist "%_localData_%\__users__\!REG_newUser!" (
    echo.
    echo This username is taken^^!
	echo "!REG_newUser!"
    echo [ Press Any Key ]
    pause > nul
    goto _lcr_REGISTER
)
set "psCommand=powershell -Command "$pword = read-host 'Create a password' -AsSecureString ; ^
 $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "REG_newPass=%%p"
if "!REG_newPass!" == "" (
	echo.
	echo Password cannot be empty.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
echo:!REG_newPass!|findstr /i "^[0-9A-Z.-_]*$" >Nul 2>&1 ||(
    echo.
	echo Invalid characters in password.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
set "psCommand=powershell -Command "$pword = read-host 'Confirm  password' -AsSecureString ; ^
 $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "REG_confirm=%%p"
if "!REG_newPass!" neq "!REG_confirm!" (
	echo.
	echo Passwords don't match.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
echo.
echo Creating your account...
ping localhost -n 2 > nul
mkdir "%_localData_%\__users__\!REG_newUser!"
::::::::::::::::::::::::::::::::::::::::: ENCRYPTING PASSWORD INPUT TO SAVE IN FILE -- _FUNCTIONAL_
set Encrypt2=%REG_newPass%
set "EncryptOut="
:encrypt2
   set "EncryptOut=%EncryptOut%!ENC[%Encrypt2:~0,1%]!"
   set "Encrypt2=%Encrypt2:~1%"
if defined Encrypt2 goto encrypt2
::::::::::::::::::::::::::::::::::::::::: END OF SECTION
::encrypt password so it cant be viewed by dedicated people
echo !EncryptOut!>"%_localData_%\__users__\!REG_newUser!\u_sec.dll"
::_0x375858_ is the code for a members, each rank has different ranks
echo _0x375856_>"%_localData_%\__users__\!REG_newUser!\u_role.dll"
echo Successfully created your account^^!
echo.
echo [ Press Any Key ]
pause > nul
goto _startMenu
goto _crash_

:writeTitle
%chcp_on%
%say%╔═════════════════════════════════════════════╗
%say%║            Local Chat Rooms 1.0             ║
%say%╠═════════════════════════════════════════════╣
%say%║ ██╗░░░░░░█████╗░░█████╗░░█████╗░██╗░░░░░    ║
%say%║ ██║░░░░░██╔══██╗██╔══██╗██╔══██╗██║░░░░░    ║
%say%║ ██║░░░░░██║░░██║██║░░╚═╝███████║██║░░░░░    ║
%say%║ ██║░░░░░██║░░██║██║░░██╗██╔══██║██║░░░░░    ║
%say%║ ███████╗╚█████╔╝╚█████╔╝██║░░██║███████╗    ║
%say%║ ╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝    ║
%say%║ ░█████╗░██╗░░██╗░█████╗░████████╗           ║
%say%║ ██╔══██╗██║░░██║██╔══██╗╚══██╔══╝           ║
%say%║ ██║░░╚═╝███████║███████║░░░██║░░░           ║
%say%║ ██║░░██╗██╔══██║██╔══██║░░░██║░░░           ║
%say%║ ╚█████╔╝██║░░██║██║░░██║░░░██║░░░           ║
%say%║ ░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░           ║
%say%║ ██████╗░░█████╗░░█████╗░███╗░░░███╗░██████╗ ║
%say%║ ██╔══██╗██╔══██╗██╔══██╗████╗░████║██╔════╝ ║
%say%║ ██████╔╝██║░░██║██║░░██║██╔████╔██║╚█████╗░ ║
%say%║ ██╔══██╗██║░░██║██║░░██║██║╚██╔╝██║░╚═══██╗ ║
%say%║ ██║░░██║╚█████╔╝╚█████╔╝██║░╚═╝░██║██████╔╝ ║
%say%║ ╚═╝░░╚═╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚═════╝░ ║
%say%║ By 1k0de                                    ║
%say%╠═════════════════════════════════════════════╣
%say%║ Type the number you wish to use             ║
%say%╠═════════════════════════════════════════════╣
%say%║ 1: Login                3: Report           ║
%say%║ 2: Sign Up              or $redirect        ║
%say%╚═════════════════════════════════════════════╝
%chcp_off%
exit /b 0

:_crash_
cls
echo.
echo The Local Chat Roos Client has crashed. Please report this error. Error Code: %_errorCode%
echo [ Press Any Key ]
pause > nul
exit
