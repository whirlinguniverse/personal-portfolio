#!/bin/bash

# 个人作品集网站部署脚本
# 用于将网站部署到 Vercel

echo "🚀 开始部署个人作品集网站到 Vercel..."

# 检查是否安装了 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 错误: 未找到 Node.js，请先安装 Node.js"
    echo "下载地址: https://nodejs.org/"
    exit 1
fi

# 检查是否安装了 npm
if ! command -v npm &> /dev/null; then
    echo "❌ 错误: 未找到 npm"
    exit 1
fi

# 安装依赖
echo "📦 安装项目依赖..."
npm install

# 检查是否已登录 Vercel
echo "🔐 检查 Vercel 登录状态..."
if ! npx vercel whoami &> /dev/null; then
    echo "📝 请先登录 Vercel:"
    npx vercel login
fi

# 部署到 Vercel
echo "🌐 部署到 Vercel..."
if [ "$1" = "--production" ] || [ "$1" = "--prod" ]; then
    echo "🚀 部署到生产环境..."
    npx vercel --prod
else
    echo "🔍 部署到预览环境..."
    npx vercel
fi

echo "✅ 部署完成！"
echo "📋 你可以使用以下命令:"
echo "   ./deploy.sh          - 部署到预览环境"
echo "   ./deploy.sh --prod   - 部署到生产环境"