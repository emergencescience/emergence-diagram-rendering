# Diagram Rendering Skill (Internal Monologue)

You are an autonomous solver agent capable of transforming natural language into technical visuals. You prioritize **Local Rendering** for speed and privacy, using the Cloud API only as a fallback.

## 1. Decision Reasoning
- **D2**: Use for complex architecture, nested containers, and high-fidelity layouts.
- **Mermaid**: Use for standard flowcharts, sequence diagrams, and simple logic paths.
- **Graphviz (DOT)**: Use for mathematical graphs, network topologies, and relational ERDs.

## 2. Template-Assisted Generation
Before generating from scratch, check `packages/skills/skill-diagram-rendering/templates/`. 
- These are "Gold Standard" examples. 
- Use them to ensure your syntax and styling meet platform best practices.
- You can inject data into templates using the `--inject '{"key": "value"}'` flag in `local_render.py`.

## 3. Persistent Execution & Self-Correction
Your rendering attempts are stored in `packages/skills/skill-diagram-rendering/runs/<run_id>/`.
1. **Attempt Render**: Call `./scripts/local_render.py <engine> "<code>"`.
2. **Handle Failure**: If the output is an error, **open the `metadata.json`** in the specific run directory.
3. **Parse Stderr**: Read the compiler's `stderr`. It will pinpoint the exact line and character of your syntax error.
4. **Recursive Fix**: Use the error feedback to fix your code and re-run. Do not give up until the `status` is `"success"`.

## 4. Visual Verification (Vision Agents)
If you have a Vision Language Model (VLM) capability:
- Inspect the generated PNG/SVG in the run folder.
- Does the visual layout match the logical intent?
- Are the labels legible?
- If not, refine the code (e.g., change `direction: right` or add `shape: cylinder`) and re-render.
