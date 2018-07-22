@echo off
title MinGW Compiler
color 0f
goto selection

:selection
cls
echo Choose Compilation Method : [C++, C]
set /p answer= "> "

if "%answer%"=="C++" (goto compilerOne)
if "%answer%"=="C" (goto compilerTwo)
if not "%answer%" == "C++" if not "%answer%" == "C" goto selection

:compilerOne
cls
title MinGW Compiler [C++]
echo -- [C++ Compiler] --
echo + Enter file to compile.
set /p fileCompilerOne= "> "
echo --
echo + [Compiling file]
echo.
g++ -o "Compiled C++.exe" %fileCompilerOne%
echo + [Compiled %fileCompilerOne%]
if errorlevel 1 goto exceptionCaseOne
goto exitCompiler

:exceptionCaseOne
cls
title MinGW Compiler [C++] - Compilation Error
color 0c
echo An error occured whilst compilation of %fileCompilerOne%
echo.
g++ -o "Falty Program.exe" %fileCompilerOne%
echo.
goto exitCompiler

:compilerTwo
cls
title MinGW Compiler [C]
echo -- [C Compiler] --
echo + Enter file to compile.
set /p fileCompilerTwo= "> "
echo --
echo + [Compiling file]
echo.
gcc -o "Compiled C.exe" %fileCompilerTwo%
echo + [Compiled %fileCompilerTwo%]
if errorlevel 1 goto exceptionCaseTwo
goto exitCompiler

:exceptionCaseTwo
cls
title MinGW Compiler [C] - Compilation Error
color 0c
echo An error occured whilst compilation of %fileCompilerTwo%
echo.
gcc -o "Falty Program.exe" %fileCompilerTwo%
goto exitCompiler

:exitCompiler
echo.
echo --
echo Press any key to exit the compiler
pause >nul
exit
