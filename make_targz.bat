@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

if exist project.tar.gz del project.tar.gz

REM Package all root HTML files + docs + CLAUDE.md
REM Excludes: .git, .tar.gz, .bat, node_modules, etc.

set "FILES="
for %%f in (*.html *.md) do (
    set "FILES=!FILES! "%%f""
)

set "DIRS="
for %%d in (docs assets) do if exist "%%d" set "DIRS=!DIRS! %%d"

tar -a -cf project.tar.gz --exclude=".git" --exclude="*.tar.gz" !FILES! !DIRS!

echo.
echo Done: project.tar.gz created
echo.
tar -tf project.tar.gz
echo.
pause
