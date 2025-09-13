@echo off
REM 个人作品集网站部署脚本 (Windows版本)
REM 用于将网站部署到 Vercel

echo 🚀 开始部署个人作品集网站到 Vercel...

REM 检查是否安装了 Node.js
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 错误: 未找到 Node.js，请先安装 Node.js
    echo 下载地址: https://nodejs.org/
    pause
    exit /b 1
)

REM 检查是否安装了 npm
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 错误: 未找到 npm
    pause
    exit /b 1
)

REM 安装依赖
echo 📦 安装项目依赖...
npm install

REM 检查是否已登录 Vercel
echo 🔐 检查 Vercel 登录状态...
npx vercel whoami >nul 2>&1
if %errorlevel% neq 0 (
    echo 📝 请先登录 Vercel:
    npx vercel login
)

REM 部署到 Vercel
echo 🌐 部署到 Vercel...
if "%1"=="--production" (
    echo 🚀 部署到生产环境...
    npx vercel --prod
) else if "%1"=="--prod" (
    echo 🚀 部署到生产环境...
    npx vercel --prod
) else (
    echo 🔍 部署到预览环境...
    npx vercel
)

echo ✅ 部署完成！
echo 📋 你可以使用以下命令:
echo    deploy.bat          - 部署到预览环境
echo    deploy.bat --prod   - 部署到生产环境
pause