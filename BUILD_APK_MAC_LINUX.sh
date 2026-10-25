#!/usr/bin/env bash
set -e
echo "==================================================="
echo "  Сборка GachiRemind APK для Android (Capacitor)"
echo "==================================================="
npm install --legacy-peer-deps
npm run build
if [ ! -d "android" ]; then
  npx cap add android
else
  npx cap sync android
fi
cd android
chmod +x gradlew
./gradlew assembleDebug
echo "Готово! Ваш APK-файл: android/app/build/outputs/apk/debug/app-debug.apk"
