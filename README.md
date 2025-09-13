# 个人作品集网站

一个简洁现代的个人作品集网站，包含首页、关于和联系页面。

## 📁 项目结构

```
personal-portfolio/
├── index.html          # 首页
├── about.html          # 关于页面
├── contact.html        # 联系页面
├── styles.css          # 样式文件
├── vercel.json         # Vercel 部署配置
├── package.json        # 项目配置
├── deploy.sh           # Linux/Mac 部署脚本
├── deploy.bat          # Windows 部署脚本
└── README.md           # 项目说明
```

## 🚀 部署到 Vercel

### 前置要求

1. 安装 [Node.js](https://nodejs.org/) (推荐 LTS 版本)
2. 拥有 [Vercel](https://vercel.com/) 账户

### 快速部署

#### Windows 用户
```bash
# 运行部署脚本
deploy.bat

# 或者部署到生产环境
deploy.bat --prod
```

#### Linux/Mac 用户
```bash
# 给脚本执行权限
chmod +x deploy.sh

# 运行部署脚本
./deploy.sh

# 或者部署到生产环境
./deploy.sh --prod
```

### 手动部署步骤

1. **安装 Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **登录 Vercel**
   ```bash
   vercel login
   ```

3. **部署项目**
   ```bash
   # 预览部署
   vercel

   # 生产部署
   vercel --prod
   ```

### 首次部署配置

运行部署命令后，Vercel 会询问以下问题：

1. **Set up and deploy "personal-portfolio"?** → 选择 `Y`
2. **Which scope do you want to deploy to?** → 选择你的账户
3. **Link to existing project?** → 选择 `N` (首次部署)
4. **What's your project's name?** → 输入项目名称或直接回车使用默认名称
5. **In which directory is your code located?** → 直接回车使用当前目录

## 🔧 配置说明

### vercel.json
- 配置静态文件处理
- 设置路由规则 (支持 `/about` 和 `/contact` 无扩展名访问)
- 优化缓存策略

### package.json
- 项目元数据和依赖管理
- 包含有用的 npm 脚本

## 📝 自定义内容

在部署前，请修改以下内容：

1. **package.json**
   - 修改 `author` 字段为你的名字

2. **HTML 文件**
   - 更新个人信息、技能、联系方式
   - 替换项目展示内容

3. **CSS 样式**
   - 根据需要调整颜色主题和样式

## 🌐 域名配置

部署完成后，你可以：

1. 使用 Vercel 提供的免费域名 (如: `your-project.vercel.app`)
2. 在 Vercel 控制台中配置自定义域名

## 📱 功能特点

- 📱 响应式设计，支持移动端
- 🎨 现代化 UI 设计
- ⚡ 快速加载
- 🔗 SEO 友好的 URL 结构
- 📧 联系表单 (前端样式，需要后端处理)

## 🛠️ 本地开发

```bash
# 安装依赖
npm install

# 本地预览 (使用 Vercel 开发服务器)
npm run dev

# 或者直接在浏览器中打开 index.html
```

## 🔄 更新部署

对网站进行修改后，重新运行部署脚本即可更新：

```bash
# Windows
deploy.bat --prod

# Linux/Mac
./deploy.sh --prod
```

## 📞 支持

如果遇到问题，请查看：
- [Vercel 官方文档](https://vercel.com/docs)
- [Vercel CLI 文档](https://vercel.com/docs/cli)