# FigureYa Games

一个轻量的网页游戏合集，主打"学术 × 娱乐"的学习型小游戏。目前包含：

- **Peer Review Defense**（塔防/策略）
- **实验室嘉年华**（派对竞技/多人AI）
- **科研马里奥要发CNS**（平台动作）
- **FigureYa带你飞**（追逐挑战）
- **我要思路——连上就有**（基于 FigureYa 缩略图的消除类小游戏）
- **论文如泉涌**（采用 FigureYa 关键词词库；中英文、教育年级分级、PWA 支持）
- **我要画图——吃图补图**（经典贪吃蛇游戏，使用 FigureYa 图片作为食物素材，支持多难度和多食物数量设置）
- **巧手拼图**（FigureYa 素材的俄罗斯方块）

你可以直接在浏览器本地打开，或部署到 GitHub Pages 在线游玩。


## 在线体验

- 根目录主页（游戏合集）：`index.html`
- 子项目入口：
  - Peer Review Defense：`game_peerreview/index.html`
  - 实验室嘉年华：`game_eggparty/index.html`
  - 科研马里奥要发CNS：`game_mario/index.html`
  - FigureYa带你飞：`game_catmouse/index.html`
  - 我要思路——连上就有：`game_linkup/index.html`
  - 论文如泉涌：`game_typing/index.html`
  - 我要画图——吃图补图：`game_snake/index.html`
  - 巧手拼图：`game_tetris/index.html`

- 在线地址（GitHub Pages 已部署）：

| 游戏 | 访问链接 |
| --- | --- |
| 合集首页 | https://ying-ge.github.io/FigureYa-Games/ |
| Peer Review Defense | https://ying-ge.github.io/FigureYa-Games/game_peerreview/ |
| 实验室嘉年华 | https://ying-ge.github.io/FigureYa-Games/game_eggparty/ |
| 科研马里奥要发CNS | https://ying-ge.github.io/FigureYa-Games/game_mario/ |
| FigureYa带你飞 | https://ying-ge.github.io/FigureYa-Games/game_catmouse/ |
| 我要思路——连上就有 | https://ying-ge.github.io/FigureYa-Games/game_linkup/ |
| 论文如泉涌 | https://ying-ge.github.io/FigureYa-Games/game_typing/ |
| 我要画图——吃图补图 | https://ying-ge.github.io/FigureYa-Games/game_snake/ |
| 巧手拼图 | https://ying-ge.github.io/FigureYa-Games/game_tetris/ |

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
├── game_peerreview/           # Peer Review Defense
│   ├── index.html
│   └── README.md
├── game_eggparty/             # 实验室嘉年华
│   └── index.html
├── game_mario/                # 科研马里奥要发CNS
│   └── index.html
├── game_catmouse/             # FigureYa带你飞
│   └── index.html
├── game_linkup/               # 我要思路——连上就有
│   ├── index.html
│   └── README.md
├── game_snake/                # 我要画图——吃图补图
│   ├── index.html
│   ├── README.md
│   └── gallery_compress/      # 游戏图片素材
├── game_typing/               # 论文如泉涌（PWA/SEO/排行榜等）
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
├── game_tetris/               # 巧手拼图
│   └── index.html
├── png/                       # 资源原图
└── png_compressed/            # 站点使用的压缩图（webp等）
```


## 子项目一览

### Peer Review Defense（`game_peerreview/`）

- 特色：
  - 塔防式投稿玩法：放置核心图表、实验数据集与工具壁垒，抵挡 Reviewer / Editor 投来的“质疑弹”
  - FigureYa 图表像阳光一样随机掉落，点击即可补充 Funding 与影响因子
  - 提供基础 / 专业两档难度，Editor 攻击与耐久分别为 Reviewer 的 1× / 2×
  - 多波次审稿压力，后期 Editor 出场比例提升、质疑强度不断递增
  - 经费（资源）与影响因子系统，击败质疑即可补充资金并提升评分
  - 支持鼠标/触控部署，画布实时刷新状态提示
- 文档：详见 `game_peerreview/README.md`
- 入口：`game_peerreview/index.html`

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_peerreview/" target="_blank">
  <img src="png_compressed/game_peerreview.webp" alt="Peer Review Defense" width="520" />
</a>

---

### 我要思路——连上就有（`game_linkup/`）

- 简介：使用 FigureYa 缩略图的休闲消除游戏，通过连接相同图块来消除
- 入口：`game_linkup/index.html`
- 备注：当前子目录文档较少（`README.md` 仅占位），欢迎补充玩法说明、规则与关卡设计

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_linkup/" target="_blank">
  <img src="png_compressed/game_linkup.webp" alt="我要思路——连上就有" width="520" />
</a>

---

### 我要画图——吃图补图（`game_snake/`）

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

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_snake/" target="_blank">
  <img src="png_compressed/game_snake.webp" alt="我要画图——吃图补图" width="520" />
</a>

---

### 实验室嘉年华（`game_eggparty/`）

- 特色：
  - 派对对抗玩法，90 秒冲刺高分
  - FigureYa 图稿争夺、多人 AI 对手
- 入口：`game_eggparty/index.html`

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_eggparty/" target="_blank">
  <img src="png_compressed/game_eggparty.webp" alt="实验室嘉年华" width="520" />
</a>

---

### 科研马里奥要发CNS（`game_mario/`）

- 特色：
  - 平台跳跃玩法，融合科研主题
  - 经典马里奥式关卡与 FigureYa 元素
- 入口：`game_mario/index.html`

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_mario/" target="_blank">
  <img src="png_compressed/game_mario.webp" alt="科研马里奥要发CNS" width="520" />
</a>

---

### FigureYa带你飞（`game_catmouse/`）

- 特色：
  - 追逐挑战，躲避障碍、收集加速
  - 多种 FigureYa 图像作为场景元素
- 入口：`game_catmouse/index.html`

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_catmouse/" target="_blank">
  <img src="png_compressed/game_catmouse.webp" alt="FigureYa带你飞" width="520" />
</a>

---

### 巧手拼图（`game_tetris/`）

- 特色：
  - 经典俄罗斯方块玩法 + FigureYa 方块素材
  - 连续消行、连击得分系统
- 入口：`game_tetris/index.html`

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_tetris/" target="_blank">
  <img src="png_compressed/game_tetris.webp" alt="巧手拼图" width="520" />
</a>

---

### 论文如泉涌（`game_typing/`）

- 特色：
  - 词汇来源：大学与研究生阶段词汇采用 FigureYa 关键词（见下文"引用"）
  - 复古绿色终端风格 + CRT 扫描线效果
  - 中/英文双语；4 个教育等级（四至五年级、六年级、初一、初二-初三）
  - 实时统计（WPM、准确率、得分、倒计时）与本地排行榜
  - 响应式设计 + 音频反馈 + 深浅色主题
  - 纯前端、可 PWA、适配 GitHub Pages
- 文档：详见 `game_typing/README.md` 与 `game_typing/PROJECT_SUMMARY.md`
- 入口：`game_typing/index.html`

点击图直达游戏页面：

<a href="https://ying-ge.github.io/FigureYa-Games/game_typing/" target="_blank">
  <img src="png_compressed/game_typing.webp" alt="论文如泉涌" width="520" />
</a>


## 引用

- Xiaofan Lu, et al. (2025). FigureYa: A Standardized Visualization Framework for Enhancing Biomedical Data Interpretation and Research Efficiency. iMetaMed.  
  DOI: https://doi.org/10.1002/imm3.70005


## 许可证

- 本仓库及所有子项目均采用 MIT License。
- 详见仓库根目录 `LICENSE`（如子项目目录内存在 `LICENSE`，其内容与根许可证一致）。
