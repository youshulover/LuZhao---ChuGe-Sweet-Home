@echo off
chcp 65001 >nul
echo ========================================
echo   一键上传到 GitHub
echo ========================================
echo.

cd /d "%~dp0"

set GIT_PATH=D:\1-Software\Git\bin\git.exe

echo [1/3] 正在添加所有修改...
"%GIT_PATH%" add .

echo [2/3] 正在提交...
set /p msg=请输入更新描述（直接回车用默认）:
if "%msg%"=="" set msg=更新项目
"%GIT_PATH%" commit -m "%msg%"

echo [3/3] 正在推送到GitHub...
"%GIT_PATH%" push origin main

echo.
echo ========================================
echo   上传完成！
echo ========================================
pause
