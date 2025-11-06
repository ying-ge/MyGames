# 绿色终端打字游戏 - 网页版

一个经典的90年代绿色终端风格打字练习游戏，支持中英文双语，专为GitHub Pages优化。

## 🎮 游戏特色

- **复古绿色终端风格** - 经典的 #00ff00 绿色荧光效果
- **CRT扫描线效果** - 模拟老式显示器的视觉体验
- **双语支持** - 支持中文和英文打字练习
- **4个教育等级** - 四至五年级、六年级、初中一年级、初中二至三年级
- **实时统计** - WPM、准确率、得分、倒计时
- **进度追踪** - 可视化进度条显示
- **音频反馈** - 完整的音效系统（网页版支持语音合成）
- **本地排行榜** - 完整的排行榜系统，支持多维度筛选
- **响应式设计** - 完美适配手机、平板和桌面设备
- **深色/浅色模式** - 支持主题切换
- **分享功能** - 支持分享成绩到社交媒体

## 🌐 在线演示

直接访问：`https://[你的用户名].github.io/[仓库名]/`

## 🚀 快速开始

### 方法一：自动部署（推荐）

使用我们提供的部署脚本：

```bash
# 克隆项目
git clone https://github.com/[你的用户名]/[仓库名].git
cd [仓库名]

# 运行部署脚本
./deploy.sh [你的GitHub用户名] [仓库名]

# 示例
./deploy.sh myusername typing-game-web
```

### 方法二：手动部署

1. **Fork或克隆项目**

```bash
git clone https://github.com/[你的用户名]/[仓库名].git
cd [仓库名]
```

2. **启用GitHub Pages**

   - 进入仓库的Settings页面
   - 在左侧菜单中找到"Pages"
   - 在"Build and deployment"中选择：
     - Source: Deploy from a branch
     - Branch: main
     - Folder: /root
   - 点击"Save"保存设置

3. **访问游戏**

   等待几分钟后，访问：`https://[你的用户名].github.io/[仓库名]/`

### 方法三：GitHub Desktop（适合新手）

1. 在GitHub上Fork本项目
2. 下载并安装GitHub Desktop
3. 在GitHub Desktop中克隆你的Fork仓库
4. 将项目文件复制到本地仓库目录
5. 在GitHub Desktop中提交并推送更改
6. 按照方法二的步骤启用GitHub Pages

### 部署验证

部署成功后，你应该能看到：
- 游戏界面正常显示
- 所有功能都可以使用
- 移动端适配良好
- 音频和振动反馈正常工作

## 🎯 游戏玩法

1. **选择语言** - 选择中文或英文练习
2. **选择年级** - 选择对应的年级（四至五年级到初中二至三年级）
3. **开始游戏** - 点击"开始游戏"按钮
4. **输入文字** - 在输入框中输入显示的绿色文字
5. **实时反馈** - 绿色表示正确，红色表示错误
6. **挑战高分** - 在60秒内获得尽可能高的分数
7. **查看排行榜** - 点击"🏆 排行榜"查看历史记录和排名

## 📊 计分规则

- **四至五年级** - 每个字符 1 分
- **六年级** - 每个字符 2 分
- **初中一年级** - 每个字符 3 分
- **初中二至三年级** - 每个字符 5 分

## 🌏 技术特点

- **纯前端实现** - HTML5 + CSS3 + JavaScript
- **无服务器依赖** - 完全本地运行
- **响应式设计** - 适配所有设备尺寸
- **现代浏览器支持** - Chrome、Firefox、Safari、Edge
- **本地存储** - 自动保存游戏记录和设置
- **Web Audio API** - 高质量音效系统
- **Speech Synthesis** - 语音反馈（支持的语言）

## 📱 兼容性

| 设备类型 | 支持状态 | 特殊功能 |
|---------|---------|----------|
| 桌面浏览器 | ✅ 完全支持 | 键盘输入、语音反馈 |
| 笔记本 | ✅ 完全支持 | 键盘输入、语音反馈 |
| 平板 | ✅ 完全支持 | 触摸输入、振动反馈 |
| 手机 | ✅ 完全支持 | 触摸输入、振动反馈 |

## 🔊 音频功能

网页版相比小程序版有更强的音频支持：

### 支持的音频功能
- ✅ **语音合成 (TTS)** - 实时语音反馈
- ✅ **Web Audio API** - 高质量音效
- ✅ **振动反馈** - 支持Android设备
- ✅ **视觉反馈** - 动画和颜色效果

### 音频设置
- **语音开关** - 可开启/关闭语音反馈
- **音量控制** - 可调节音效音量
- **语速控制** - 可调节语音语速

## 🎨 自定义选项

### 修改词汇内容
在 `index.html` 的JavaScript部分找到词汇对象：

```javascript
const words = {
  grade4_5: ['spring', 'summer', 'school', 'teacher', ...],      // 四至五年级
  grade6: ['interesting', 'science', 'technology', 'computer', ...], // 六年级
  middle1: ['achievement', 'education', 'environment', 'government', ...], // 初中一年级
  middle2_3: ['mathematics', 'philosophy', 'democracy', 'republic', ...] // 初中二至三年级
};

const chineseWords = {
  grade4_5: ['春天', '学校', '老师', '学生', '快乐', '勇敢', ...],      // 四至五年级
  grade6: ['科技', '教育', '环境', '发展', '创新', '文化', ...],        // 六年级
  middle1: ['成就', '民主', '法制', '现代化', '社会主义', ...],      // 初中一年级
  middle2_3: ['数学', '物理', '化学', '历史', '地理', '生物', ...]   // 初中二至三年级
};
```

### 修改游戏时长
在JavaScript中修改游戏时长：

```javascript
let timeLeft = 60; // 60秒游戏时长
```

### 自定义样式
在CSS部分修改颜色、字体、动画等视觉效果。

## 📈 本地排行榜

### 排行榜功能
- **多维度筛选** - 按语言、年级、时间、排序方式筛选
- **个人最佳** - 显示特定条件下的最佳记录
- **统计信息** - 总游戏次数、最高分、平均WPM等
- **记录管理** - 支持删除单条记录和清空所有数据

### 数据存储
使用浏览器的 `localStorage` 进行本地存储，数据包括：
- 游戏记录（时间、语言、年级、得分、WPM、准确率）
- 用户设置（音频开关、音量、主题等）
- 个人最佳成绩

## 🔧 高级配置

### SEO优化
已配置的SEO优化：
- Meta标签优化
- Open Graph支持
- Twitter Card支持
- 结构化数据标记

### PWA支持
可配置为渐进式Web应用：
- 离线缓存
- 桌面安装
- 应用图标

### 分析统计
可集成Google Analytics或其他统计工具：
```html
<!-- 在<head>中添加 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_TRACKING_ID');
</script>
```

## 🌐 国际化

游戏支持多语言扩展：

### 添加新语言
1. 在HTML中添加语言选项
2. 在JavaScript中添加对应语言的词汇库
3. 更新界面文本翻译

### 支持的语言
- 🇨🇳 中文 (简体)
- 🇺🇸 英文
- 可扩展其他语言...

## 🐛 故障排除

### 常见问题

1. **音频无法播放**
   - 确保浏览器支持Web Audio API
   - 检查浏览器是否被静音
   - 某些浏览器需要用户交互后才能播放音频

2. **语音合成不工作**
   - 检查浏览器是否支持Speech Synthesis
   - 确保系统安装了语音包
   - 尝试不同的语音选项

3. **振动反馈无效**
   - 振动API仅在Android设备上有效
   - iOS设备不支持振动反馈
   - 检查浏览器权限设置

4. **本地数据丢失**
   - 清除浏览器数据会删除游戏记录
   - 建议定期导出重要的游戏记录

### 浏览器兼容性

| 浏览器 | 版本要求 | 音频支持 | 语音支持 | 振动支持 |
|--------|---------|---------|---------|----------|
| Chrome | 60+ | ✅ | ✅ | ✅ |
| Firefox | 55+ | ✅ | ✅ | ❌ |
| Safari | 11+ | ✅ | ✅ | ❌ |
| Edge | 79+ | ✅ | ✅ | ✅ |

## 🤝 贡献指南

欢迎提交Issue和Pull Request！

### 开发环境
1. Fork本项目
2. 创建feature分支：`git checkout -b feature/new-feature`
3. 提交更改：`git commit -am 'Add new feature'`
4. 推送分支：`git push origin feature/new-feature`
5. 提交Pull Request

### 代码规范
- 使用语义化的HTML5标签
- CSS使用BEM命名规范
- JavaScript遵循ES6+标准
- 添加适当的注释和文档

## 📄 许可证

MIT License - 详见 [LICENSE](LICENSE) 文件

## 📞 联系方式

如有问题或建议，请通过以下方式联系：
- GitHub Issues: [项目Issues页面]
- 邮箱: [你的邮箱]

## 🔧 项目结构

```
typing-game-web/
├── index.html              # 主游戏文件
├── manifest.json           # PWA配置文件
├── sw.js                   # Service Worker
├── favicon.ico            # 网站图标
├── README.md              # 项目说明文档
├── LICENSE                # 许可证文件
├── deploy.sh              # 自动部署脚本
├── .gitignore             # Git忽略文件
├── .nojekyll              # 禁用Jekyll处理
├── robots.txt             # 搜索引擎爬虫配置
├── sitemap.xml            # 站点地图
├── 404.html               # 404错误页面
└── .github/
    └── workflows/
        └── deploy.yml     # GitHub Actions部署配置
```

## 🛠 开发指南

### 本地开发

1. **直接在浏览器中打开**
   ```bash
   # 在项目目录中
   open index.html
   ```

2. **使用本地服务器（推荐）**
   ```bash
   # Python 3
   python -m http.server 8000

   # Node.js (需要安装http-server)
   npx http-server

   # PHP
   php -S localhost:8000
   ```

3. **访问本地服务器**
   - 打开浏览器访问 `http://localhost:8000`

### 代码修改

- **词汇内容修改**: 在 `index.html` 的JavaScript部分修改 `words` 和 `chineseWords` 对象
- **游戏时长修改**: 修改 `timeLeft = 60` 的值
- **样式修改**: 在 `<style>` 标签中修改CSS样式
- **功能添加**: 在 `<script>` 标签中添加新的JavaScript功能

### 调试模式

游戏提供了调试功能：
- 打开浏览器开发者工具 (F12)
- 在控制台中访问 `window.game` 对象
- 可以调用游戏的各种方法进行测试

```javascript
// 控制台示例
window.game.startGame()      // 开始游戏
window.game.pauseGame()      // 暂停游戏
window.game.showHelp()       // 显示帮助
window.game.toggleAudio()    // 切换音频
```

## 📊 性能优化

### 已实现的优化

- **CSS动画**: 使用GPU加速的transform动画
- **事件委托**: 减少事件监听器数量
- **本地存储**: 高效的localStorage数据管理
- **懒加载**: 按需加载游戏功能
- **缓存策略**: Service Worker静态资源缓存

### 性能监控

游戏内置性能监控：
- FPS帧率监控
- 内存使用情况
- 加载时间统计
- 错误捕获和报告

## 🔒 安全考虑

- **无外部依赖**: 完全本地运行，无安全风险
- **输入验证**: 严格的输入数据处理
- **XSS防护**: 所有用户输入都经过安全处理
- **CSP兼容**: 支持内容安全策略

## 🌐 国际化 (i18n)

游戏支持多语言扩展：

### 添加新语言步骤

1. **在HTML中添加语言按钮**
   ```html
   <button class="language-btn" data-language="fr">Français</button>
   ```

2. **在JavaScript中添加词汇库**
   ```javascript
   const frenchWords = {
     easy: ['chat', 'chien', 'maison', ...],
     // ... 其他难度级别
   };
   ```

3. **更新语言切换逻辑**
   ```javascript
   setLanguage('french') {
     this.currentLanguage = 'french';
     this.words = frenchWords;
     // ... 更新UI
   }
   ```

### 支持的语言特性

- Unicode字符支持
- RTL语言支持
- 字体回退机制
- 动态字体加载

## 📈 分析和统计

### 集成Google Analytics

在 `<head>` 中添加：
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_TRACKING_ID');
</script>
```

### 自定义事件追踪

游戏已内置事件追踪：
- 游戏开始/结束
- 语言切换
- 难度选择
- 分享行为

## 🔧 高级配置

### 环境变量

```javascript
// 在index.html中配置
const CONFIG = {
  API_URL: 'https://your-api.com',      // 可选的API端点
  ANALYTICS_ID: 'GA_TRACKING_ID',       // Google Analytics ID
  DEFAULT_LANGUAGE: 'chinese',          // 默认语言
  DEFAULT_DIFFICULTY: 'easy',           // 默认难度
  GAME_DURATION: 60,                    // 游戏时长(秒)
  ENABLE_SOUND: true,                   // 音频开关
  ENABLE_VIBRATION: true                // 振动开关
};
```

### 自定义主题

修改CSS变量来自定义主题：
```css
:root {
  --primary-color: #00ff00;
  --background-color: #0a0f0a;
  --text-color: #00ff00;
  --border-color: #00ff00;
  --shadow-color: rgba(0, 255, 0, 0.3);
}
```

## 📱 PWA功能

### 安装到主屏幕

1. 在支持的浏览器中访问游戏
2. 点击地址栏的"安装"图标
3. 确认安装到主屏幕
4. 游戏将以独立应用运行

### 离线功能

- Service Worker缓存静态资源
- 离线状态下可正常游戏
- 本地数据自动保存
- 网络恢复时自动同步

## 🚀 部署到其他平台

### Netlify

1. 将代码推送到GitHub
2. 在Netlify中连接GitHub仓库
3. 设置构建命令：`echo "No build needed"`
4. 设置发布目录：`.`

### Vercel

1. 将代码推送到GitHub
2. 在Vercel中导入项目
3. 选择"Other"框架
4. 点击"Deploy"

### Firebase Hosting

```bash
# 安装Firebase CLI
npm install -g firebase-tools

# 初始化项目
firebase init hosting

# 部署
firebase deploy
```

## 🔮 未来计划

- [ ] 多人对战模式
- [ ] 自定义词汇库
- [ ] 语音识别输入
- [ ] 云端数据同步
- [ ] 更多主题风格
- [ ] 教师管理后台
- [ ] 学习进度分析
- [ ] 成就系统

---

**享受复古打字练习的乐趣！** 🟢⌨️🟢