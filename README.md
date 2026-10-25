# Как получить готовый GachiRemind.apk из этого архива

В этот архив уже добавлены настройки **Capacitor Android** (`capacitor.config.json`), автосборщик **GitHub Actions** (`.github/workflows/build-apk.yml`) и скрипты сборки в 1 клик.

## Способ 1. Собрать APK бесплатно в облаке через GitHub (без установки Android Studio и Node.js)
1. Создайте бесплатный аккаунт на [github.com](https://github.com/) и создайте новый репозиторий (New repository).
2. Распакуйте этот архив и загрузите все файлы в ваш репозиторий (через кнопку **Add file -> Upload files**).
   *(Важно: убедитесь, что папка `.github/workflows/build-apk.yml` тоже загружена).*
3. Перейдите во вкладку **Actions** вашего репозитория.
4. Запустится процесс **Build Android APK (GachiRemind)**. Через 2–3 минуты, когда появится зеленая галочка, нажмите на завершенную сборку и внизу в разделе **Artifacts** скачайте готовый **`GachiRemind-Android-APK`** (внутри будет `app-debug.apk`, который сразу устанавливается на любой Android-телефон).

## Способ 2. Собрать на компьютере в 1 клик
Если у вас на ПК установлены Node.js и Android Studio (Android SDK):
- На **Windows**: запустите файл `BUILD_APK_WINDOWS.bat`
- На **macOS / Linux**: запустите `./BUILD_APK_MAC_LINUX.sh`
Готовый APK появится в папке `android/app/build/outputs/apk/debug/app-debug.apk`.
