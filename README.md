# FigureYa Games

一个轻量的网页游戏合集，主打"学术 × 娱乐"的学习型小游戏。目前包含：

- **连连看**（基于 FigureYa 缩略图的消除类小游戏）
- **绿色终端打字游戏**（采用 FigureYa 关键词词库；中英文、教育年级分级、PWA 支持）
- **贪吃蛇**（经典游戏，使用 FigureYa 图片作为食物素材，支持多难度和多食物数量设置）

你可以直接在浏览器本地打开，或部署到 GitHub Pages 在线游玩。


## 在线体验

- 根目录主页（游戏合集）：`index.html`
- 子项目入口：
  - 连连看：`game_linkup/index.html`
  - 绿色终端打字游戏：`game_typing/index.html`
  - 贪吃蛇：`game_snake/index.html`

在线地址（已部署）：

- 合集首页：https://ying-ge.github.io/FigureYa-Games/
- 连连看：https://ying-ge.github.io/FigureYa-Games/game_linkup/
- 绿色终端打字游戏：https://ying-ge.github.io/FigureYa-Games/game_typing/
- 贪吃蛇：https://ying-ge.github.io/FigureYa-Games/game_snake/


## 快速开始（本地）

本仓库为纯前端静态站点：

- 最快方式：双击打开根目录 `index.html` 即可进入合集主页
- 推荐方式：用本地静态服务器打开（便于 PWA/Service Worker 等功能在 `game_typing` 中正常工作）

常见做法（任选其一）：

```bash
# Python 3 内置
python3 -m http.server 8000
# 然后浏览器访问 http://localhost:8000

# Node.js（需安装 http-server）
npx http-server
```


## 仓库结构

```
FigureYa-Games/
├── index.html                 # 合集首页（卡片进入各游戏）
├── game_linkup/               # 连连看
│   ├── index.html
│   └── README.md
├── game_snake/                # 贪吃蛇
│   ├── index.html
│   ├── README.md
│   └── gallery_compress/      # 游戏图片素材
├── game_typing/               # 绿色终端打字游戏（PWA/SEO/排行榜等）
│   ├── 404.html
│   ├── deploy.sh
│   ├── index.html
│   ├── LICENSE
│   ├── manifest.json
│   ├── PROJECT_SUMMARY.md
│   ├── README.md
│   ├── robots.txt
│   ├── sitemap.xml
│   └── sw.js
├── png/                       # 资源原图
└── png_compressed/            # 站点使用的压缩图（webp等）
```


## 子项目一览

### 连连看（`game_linkup/`）

- 简介：使用 FigureYa 缩略图的休闲消除游戏，通过连接相同图块来消除
- 入口：`game_linkup/index.html`
- 备注：当前子目录文档较少（`README.md` 仅占位），欢迎补充玩法说明、规则与关卡设计

配图预览：

<img src="png_compressed/game_linkup.webp" alt="连连看" width="520" />

---

### 贪吃蛇（`game_snake/`）

- 特色：
  - 使用 FigureYa 缩略图作为食物素材
  - 4种难度选择（入门、简单、中等、困难）
  - 可选择同时出现的食物数量（1-5个）
  - 动态加速机制，每吃5个食物自动提速
  - 本地最高分记录
  - 响应式设计，支持移动端
  - 精美渐变色界面和动画效果
- 文档：详见 `game_snake/README.md`
- 入口：`game_snake/index.html`

配图预览：

<img src="png_compressed/game_snake.webp" alt="贪吃蛇" width="520" />

---

### 绿色终端打字游戏（`game_typing/`）

- 特色：
  - 词汇来源：大学与研究生阶段词汇采用 FigureYa 关键词（见下文"引用"）
  - 复古绿色终端风格 + CRT 扫描线效果
  - 中/英文双语；4 个教育等级（四至五年级、六年级、初一、初二-初三）
  - 实时统计（WPM、准确率、得分、倒计时）与本地排行榜
  - 响应式设计 + 音频反馈 + 深浅色主题
  - 纯前端、可 PWA、适配 GitHub Pages
- 文档：详见 `game_typing/README.md` 与 `game_typing/PROJECT_SUMMARY.md`
- 入口：`game_typing/index.html`

配图预览：

<img src="png_compressed/game_typing.webp" alt="打字游戏" width="520" />


## 引用

- Xiaofan Lu, et al. (2025). FigureYa: A Standardized Visualization Framework for Enhancing Biomedical Data Interpretation and Research Efficiency. iMetaMed.  
  DOI: https://doi.org/10.1002/imm3.70005


## 许可证

- 本仓库及所有子项目均采用 MIT License。
- 详见仓库根目录 `LICENSE`（如子项目目录内存在 `LICENSE`，其内容与根许可证一致）。
