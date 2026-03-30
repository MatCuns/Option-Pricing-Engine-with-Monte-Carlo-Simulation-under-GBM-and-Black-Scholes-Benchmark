@echo off

echo ===============================
echo Building Option Pricing Engine
echo ===============================

g++ ^
src\main.cpp ^
src\EuropeanOption.cpp ^
src\BlackScholes.cpp ^
src\MonteCarloEngine.cpp ^
src\Statistics.cpp ^
src\RandomGenerator.cpp ^
-I include ^
-std=c++17 ^
-o option_pricer.exe

if %ERRORLEVEL% neq 0 (
    echo.
    echo Build failed.
    pause
    exit /b
)

echo.
echo Build successful.
echo Executable created: option_pricer.exe
pause
