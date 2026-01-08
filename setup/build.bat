@echo off
chcp 65001 >nul
rem switch to project root folder
cd /d "%~dp0.."

echo ==========================================
echo       Clean and Build LaTeX Project
echo ==========================================


echo [0/4] Building Cover Pages...
copy /Y figures\kust.png preface\kust.png >nul
pushd preface
xelatex -interaction=nonstopmode cover
xelatex -interaction=nonstopmode titlepage
xelatex -interaction=nonstopmode cover_others
popd
if %errorlevel% neq 0 (
    echo Warning: Cover pages compilation failed.
)

echo [1/4] Running xelatex first pass...
xelatex -file-line-error -interaction=nonstopmode main
if %errorlevel% neq 0 (
    echo Error: xelatex failed.
    pause
    exit /b 1
)

echo [2/4] Running bibtex...
bibtex main
if %errorlevel% neq 0 (
    echo Warning: bibtex failed or no citations found. Continuing...
)

echo [3/4] Running xelatex second pass...
xelatex -file-line-error -interaction=nonstopmode main

echo [4/4] Running xelatex third pass...
xelatex -file-line-error -interaction=nonstopmode main

echo ==========================================
echo            Compilation Complete
echo ==========================================
pause
