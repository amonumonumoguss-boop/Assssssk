@echo off
setlocal enabledelayedexpansion
title RIGGED CASINO =))
color 0a
chcp 65001 >nul

set win=0

:: ===== MAIN =====
:menu
cls
call :banner

echo ╔══════════════════════════════╗
echo ║      RIGGED CASINO 🤡       ║
echo ╠══════════════════════════════╣
echo ║   Win Streak: !win!           ║
echo ║   Press any key to spin...   ║
echo ╚══════════════════════════════╝
echo.
echo                         dev by: Hakari

pause >nul

call :spin_one a
call :spin_one b
call :spin_one c

call :result
goto menu

:: ===== BANNER =====
:banner
echo        ██   ██  █████  ██   ██  █████  ██████  ██
echo        ██   ██ ██   ██ ██  ██  ██   ██ ██   ██ ██
echo        ███████ ███████ █████   ███████ ██████  ██
echo        ██   ██ ██   ██ ██  ██  ██   ██ ██   ██ ██
echo        ██   ██ ██   ██ ██   ██ ██   ██ ██   ██ ██
echo.
exit /b

:: ===== SPIN 1 Ô (BẤM ĐỂ DỪNG) =====
:spin_one
set var=%1

:loop
set /a r=!random! %% 4

if !r!==0 set temp=GAY
if !r!==1 set temp=SUS
if !r!==2 set temp=NIG
if !r!==3 set temp=LOVE

set %var%=!temp!

cls
call :banner
call :draw "SPINNING..."

:: đợi phím thật
choice /c x /n >nul
if errorlevel 1 exit /b

goto loop

:: ===== DRAW =====
:draw
echo ╔══════════════════════════════╗
echo ║      %~1                 ║
echo ╠══════════════════════════════╣
echo ║     !a!   !b!   !c!      ║
echo ╠══════════════════════════════╣
echo ║   Win Streak: !win!          ║
echo ╚══════════════════════════════╝
echo.
echo                         dev by: Hakari
exit /b

:: ===== RESULT =====
:result
cls
call :banner
call :draw "RESULT"

:: 💥 SPECIAL (chỉ cần 1 LOVE)
if "!a!"=="LOVE" goto special
if "!b!"=="LOVE" goto special
if "!c!"=="LOVE" goto special

:: 🤡 JACKPOT GIẢ
if "!a!"=="!b!" if "!b!"=="!c!" (
    echo.
    echo  HAKARI DA DO MAY
    timeout /t 2 >nul

    echo WAIT...
    timeout /t 2 >nul

    echo ERROR: CASINO BUG 
    timeout /t 2 >nul

    set win=0
    call :lose
    exit /b
)

:: 💀 THUA
set win=0
call :lose
exit /b

:: ===== SPECIAL =====
:special
set a=LOVE
set b=YOUR
set c=MOM

cls
color 0d
call :banner
call :draw "SPECIAL!!!"

echo.
echo ########################################
echo #                                      #
echo #         I LOVE YOUR MOM ❤️           #
echo #                                      #
echo ########################################
echo.

timeout /t 5 >nul

set /a win+=1
color 0a

if !win! GEQ 3 goto rick
exit /b

:: ===== LOSE =====
:lose
cls
color 4f

echo NI ZHE GE SHA GUA 🤡
echo -30,000,000 SOCIAL CREDIT
echo.

echo ⬇
echo ⬇
echo ⬇
echo.

:: =============================
:: DÁN ASCII CONVERT TOOL Ở ĐÂY
:: =============================

echo.
echo EXECUTION DATE: 明天 
echo.
echo                         dev by: Hakari
pause
color 0a
exit /b

:: ===== RICKROLL =====
:rick
cls
echo GET RICKROLLED =))
pause
curl ascii.live/rick
pause
exit