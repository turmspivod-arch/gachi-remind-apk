@echo off
chcp 65001 >nul
echo ===================================================
echo   Сборка GachiRemind APK для Android (Capacitor)
echo ===================================================
echo.
echo [1/4] Установка пакетов npm...
call npm install --legacy-peer-deps
echo.
echo [2/4] Сборка веб-приложения (dist)...
call npm run build
echo.
echo [3/4] Подготовка Android-проекта...
if not exist "android" (
    call npx cap add android
) else (
    call npx cap sync android
)
echo.
echo [4/4] Компиляция APK через Gradle (требуется установленный Android SDK / Android Studio)...
cd android
if exist "gradlew.bat" (
    call gradlew.bat assembleDebug
    echo.
    echo Готово! Ваш APK-файл находится по пути:
    echo android\app\build\outputs\apk\debug\app-debug.apk
) else (
    echo Откройте папку android в Android Studio: npx cap open android
)
pause
