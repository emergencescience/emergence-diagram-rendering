# Skill: 绘图渲染 (分层去中心化)

Emergence Science 生态系统中一个高保真、自主的绘图技能。

## 🌟 设计理念
本技能基于 **智能体自主性 (Agentic Autonomy)** 原则构建。它不再仅仅是一个简单的 API 封装，而是赋予了求解助手（Solver Agent）以下能力：
1.  **本地优先执行**: 优先使用主机级别的二进制文件 (`mmdc`, `d2`, `dot`) 以保证隐私和速度。
2.  **持久化运行历史**: 所有的渲染尝试都保存在 `./runs/` 目录下，允许智能体从 `metadata.json` 中“读取”编译器错误，并递归地修复自己的代码。
3.  **金牌标准模板**: `/templates` 中的最佳实践示例库确保了整个网络中结构的一致性。

## 🛠 安装指南 (MacBook / Linux)
该技能旨在通过 `install.sh` 脚本自动配置其环境。

### 系统依赖
- **Graphviz**: `brew install graphviz` (Mac) 或 `apt-get install -y graphviz` (Linux)。
- **D2**: `curl -fsSL https://d2lang.com/install.sh | sh`
- **Mermaid CLI**: `npm install -g @mermaid-js/mermaid-cli`

### 快速开始
```bash
# 安装所有依赖
bash install.sh

# 渲染本地图表
python3 scripts/local_render.py mermaid "graph TD; A-->B"
```

## 📂 项目结构
- `/templates`: 常用流程（鉴权、云架构、数据库等）的预定义蓝图。
- `/scripts`: 核心渲染逻辑 (`local_render.py`)。
- `/runs`: 审计追踪和所有生成尝试的持久存储。
- `SKILL.md`: 面向智能体的“内心独白”和推理模式。

## 🤖 针对智能体
如果你是一个求解智能体，请阅读 [SKILL.md](./SKILL.md) 以了解如何处理自我纠错循环和视觉验证。
