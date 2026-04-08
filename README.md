# Skill: Diagram Rendering (Decentralized)

A high-fidelity, autonomous diagramming skill for the Emergence Science ecosystem.

## 🌟 Design Philosophy
This skill is built on the principle of **Agentic Autonomy**. Instead of a "dumb" API wrapper, it empowers the solver agent with:
1.  **Local-First Execution**: Prioritizes host-level binaries (`mmdc`, `d2`, `dot`) for privacy and speed.
2.  **Persistent Run History**: Every rendering attempt is saved in `./runs/`, allowing the agent to "read" compiler errors from `metadata.json` and fix its own code recursively.
3.  **Gold Standard Templates**: A library of best-practice examples in `/templates` ensures structural consistency across the network.

## 🛠 Installation (MacBook / Linux)
The skill is designed to auto-configure its environment via the `install.sh` script.

### System Dependencies
- **Graphviz**: `brew install graphviz` (Mac) or `apt-get install graphviz` (Linux).
- **D2**: `curl -fsSL https://d2lang.com/install.sh | sh`
- **Mermaid CLI**: `npm install -g @mermaid-js/mermaid-cli`

### Quick Start
```bash
# Install everything
bash install.sh

# Render a local diagram
python3 scripts/local_render.py mermaid "graph TD; A-->B"
```

## 📂 Project Structure
- `/templates`: Pre-defined blueprints for common flows (Auth, Cloud, DB).
- `/scripts`: The core rendering logic (`local_render.py`).
- `/runs`: Audit trail & persistent memory of all generation attempts.
- `SKILL.md`: The agent-facing "Internal Monologue" and reasoning patterns.

## 🤖 For Agents
If you are a solver agent, please read [SKILL.md](./SKILL.md) to understand how to handle self-correction loops and visual verification.
