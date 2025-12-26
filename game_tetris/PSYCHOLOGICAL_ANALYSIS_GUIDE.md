# 俄罗斯方块心理分析系统使用指南

## 功能概述

这个增强版俄罗斯方块游戏内置了完整的用户行为数据收集和心理分析功能。系统会自动记录你的游戏行为，并在游戏结束后提供专业的心理分析报告。

## 🔒 安全性说明

**重要**：本系统采用安全的API密钥管理方案：
- ✅ API密钥仅存储在浏览器的localStorage中（本地存储）
- ✅ 不会硬编码在源代码中
- ✅ 不会被提交到Git仓库
- ✅ 用户可通过设置界面随时管理密钥
- ✅ 密钥仅在调用GLM-4 API时使用

## 核心功能

### 1. 自动数据收集
系统会在游戏过程中自动收集以下数据：

#### 基础游戏数据
- 游戏时长和得分
- 等级进度和消行数
- 游戏设置偏好（起始等级、方块大小等）

#### 操作行为数据
- **按键记录**：每次移动、旋转、下降的精确时间戳
- **决策时间**：每个方块的生成到锁定的时间
- **操作序列**：完整的行为链追踪
- **暂停模式**：暂停次数和时长

#### 心理指标
- **冒险倾向指数**：基于硬下降使用频率
- **思考深度指数**：基于旋转操作频率
- **决策效率**：平均每方块决策时间
- **操作风格**：精确调整 vs 快速下落

### 2. 数据存储
所有数据自动保存到浏览器本地存储（localStorage），最多保留10个游戏会话。

### 3. 心理分析报告

#### 方式一：快速分析（内置）
游戏结束后点击"Get Psychological Analysis"按钮，系统会使用内置算法生成即时分析报告，包括：
- 冒险倾向评估
- 思考模式分析
- 决策效率评价
- 性格特质推断
- 改进建议

#### 方式二：GLM-4深度分析（需API密钥）
使用智谱AI的GLM-4大语言模型进行专业的心理分析，提供更深入、更个性化的洞察。

## 使用步骤

### 基础使用（离线分析）

1. **开始游戏**
   - 打开 `game_tetris/index.html`
   - 点击"Start"按钮开始游戏
   - 系统自动开始记录数据

2. **正常游戏**
   - 使用键盘控制游戏
   - ← → ：左右移动
   - ↑ ：旋转
   - ↓ ：软下降
   - 空格：硬下降
   - P：暂停/继续

3. **获取分析**
   - 游戏结束后点击"Get Psychological Analysis"
   - 查看自动生成的心理分析报告
   - 可复制报告或关闭窗口

4. **导出数据**（可选）
   - 打开浏览器控制台（F12）
   - 输入 `exportBehaviorData()` 并回车
   - 数据将自动下载为JSON文件

### 高级使用（GLM-4深度分析）

#### 方式一：通过设置界面配置（推荐）

1. **获取API密钥**
   - 访问 [智谱AI开放平台](https://open.bigmodel.cn/)
   - 注册账号并创建API密钥

2. **在游戏中配置**
   - 打开游戏页面 `game_tetris/index.html`
   - 点击右上角的 **"⚙️ 设置"** 按钮
   - 在弹出窗口中粘贴你的API密钥
   - 点击"保存"按钮
   - 状态指示器会显示"● API已配置"

3. **获取深度分析**
   - 正常玩游戏（建议至少10分钟以获得足够数据）
   - 游戏结束后点击"Get Psychological Analysis"
   - 系统会自动使用GLM-4 API生成专业报告

#### 方式二：通过控制台配置（高级用户）

```javascript
// 在浏览器控制台中运行
localStorage.setItem('tetris_glm_api_key', 'your_actual_api_key_here');
// 刷新页面
location.reload();
```

#### 方式三：使用配置文件（开发者）

1. 复制 `.env.example` 文件：
   ```bash
   cp .env.example .env.local
   ```

2. 编辑 `.env.local` 文件，填入你的API密钥：
   ```
   GLM_API_KEY=your_actual_api_key_here
   ```

3. 在游戏代码中读取环境变量（需要构建工具支持）

## 数据隐私与安全

### API密钥安全
- 🔒 API密钥使用密码输入框，输入时隐藏显示
- 🔒 仅存储在浏览器的localStorage中
- 🔒 可随时通过设置界面清除
- 🔒 不会被上传或分享

### 用户数据隐私
- 所有游戏数据仅存储在你的浏览器本地
- 不会发送到任何服务器（除GLM-4 API调用外）
- 可随时清除浏览器缓存删除数据
- 导出的JSON文件完全由你控制
- `.env.local` 配置文件已被 `.gitignore` 排除，不会提交到Git

## 控制台命令

在浏览器控制台（F12）中可使用以下命令：

### 游戏数据分析
```javascript
// 查看当前会话数据
behaviorTracker.exportData()

// 导出完整数据为JSON文件
exportBehaviorData()

// 查看快速分析（不调用API）
getQuickAnalysis()

// 查看行为摘要
behaviorTracker.calculateSummary()

// 查看所有历史会话
JSON.parse(localStorage.getItem('tetrisBehaviorHistory'))
```

### API密钥管理
```javascript
// 查看当前API密钥状态
localStorage.getItem('tetris_glm_api_key')

// 手动设置API密钥（不推荐，请使用设置界面）
localStorage.setItem('tetris_glm_api_key', 'your_api_key_here')

// 清除API密钥
localStorage.removeItem('tetris_glm_api_key')

// 查看API配置
localStorage.getItem('tetris_glm_api_config')
```

## 心理指标解读

### 冒险倾向指数
- **高（>20）**：敢于冒险，追求效率，喜欢快速决策
- **中（10-20）**：平衡的冒险风格，适度冒险
- **低（<10）**：谨慎行事，注重精确，求稳为先

### 思考深度指数
- **高（>80）**：深思熟虑，追求最优解，策略型玩家
- **中（50-80）**：适度思考，平衡速度与策略
- **低（<50）**：快速反应，直觉型玩家，依赖本能

### 决策效率
- **快速决策型（<2000ms）**：反应迅速，适应力强
- **平衡型（2000-4000ms）**：节奏适中，综合考虑
- **深思熟虑型（>4000ms）**：仔细考量，追求完美

### 性格类型

1. **果断行动型**
   - 高冒险倾向 + 快速决策
   - 适合高压环境，执行力强

2. **审慎思考型**
   - 低冒险倾向 + 深度思考
   - 追求完美，策略导向

3. **直觉反应型**
   - 快速决策 + 较少思考
   - 适应力强，依赖本能

4. **平衡分析型**
   - 各项指标均衡
   - 灵活多变，全能型玩家

## 技术实现

### 数据结构
```javascript
{
  sessionId: "session_1234567890_abc123",
  sessionDuration: 600000,  // 毫秒
  settings: { startLevel, blockCount, lineProbability, speedMultiplier },
  keyEvents: [
    { timestamp, keyType, gameState, currentPiece }
  ],
  gameEvents: [
    { timestamp, eventType, data }
  ],
  pieceDecisions: [
    { pieceType, startTime, actions[], decisionTime }
  ],
  summary: {
    totalKeyPresses,
    avgDecisionTime,
    riskTakingScore,
    contemplationScore
  }
}
```

### 事件追踪
- `game_start`：游戏开始
- `game_end`：游戏结束
- `lines_cleared`：消行事件
- `level_up`：等级提升
- `pause_start/end`：暂停事件
- `move_left/right`：左右移动
- `rotate`：旋转
- `soft_drop/hard_drop`：下落操作

## 常见问题

### 关于数据安全
**Q: API密钥会被盗用吗？**
A: 只要你不在公共场所使用电脑，并且定期清理浏览器数据，风险很低。密钥只存储在你的浏览器中。

**Q: 数据会自动上传吗？**
A: 不会。所有数据默认存储在浏览器本地，只有在使用GLM-4分析时才会发送到智谱AI的API。

**Q: 如何彻底清除所有数据？**
A: 在控制台运行：
```javascript
// 清除游戏数据
localStorage.removeItem('tetrisBehaviorHistory')
// 清除API密钥
localStorage.removeItem('tetris_glm_api_key')
// 清除所有相关数据
localStorage.clear()
```

### 关于使用体验
**Q: 需要玩多久才能获得有效分析？**
A: 建议至少玩10分钟或达到等级3以上，这样收集的数据足以生成有意义的分析。

**Q: 可以分析历史游戏数据吗？**
A: 可以。最近10次游戏的数据都保存在localStorage中，可以通过控制台命令查看。

**Q: GLM-4 API需要付费吗？**
A: 智谱AI提供一定的免费额度，具体请查看官网的定价说明。如果只偶尔使用，免费额度足够。

**Q: 如果不配置API密钥怎么办？**
A: 系统会自动使用内置的快速分析功能，也能生成不错的心理分析报告。

**Q: API调用失败怎么办？**
A:
1. 检查网络连接
2. 确认API密钥是否有效（在设置中重新输入）
3. 检查是否超出API调用限额
4. 使用快速分析功能作为替代

## 未来改进方向

- [ ] 添加多个游戏会话的对比分析
- [ ] 生成可视化图表（操作热力图、决策时间分布等）
- [ ] 支持导出PDF格式报告
- [ ] 添加情绪识别（基于操作速度变化）
- [ ] 多人排行榜对比功能
- [ ] Webhook集成自动发送分析结果

## 联系方式

如有问题或建议，请通过项目仓库提交Issue。
