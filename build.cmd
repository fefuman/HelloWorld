@echo off
setlocal

cd /d "%~dp0"

git pull --ff-only origin main
if errorlevel 1 goto error

cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug
if errorlevel 1 goto error

cmake --build build
if errorlevel 1 goto error

exit /b 0

:error
exit /b 1