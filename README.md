
## Overview
Project Chimera is an initiative to build **Autonomous AI Influencers**
—digital agents that research trends, generate content, and manage engagement without human intervention.  

 The Strategist (Research & Foundation)
- **Research & Reading:** a16z *Trillion Dollar AI Code Stack*, OpenClaw, MoltBook, Chimera SRS.  
  - Analyze Chimera’s role in the Agent Social Network.  
  - Define social protocols for agent-to-agent communication.
- **Domain Architecture Strategy:**  
  - Select agent pattern (e.g., Hierarchical Swarm vs Sequential Chain).  
  - Define Human-in-the-Loop safety layer.  
  - Choose hybrid database type (SQL vs NoSQL).  

- **Golden Environment Setup:**  
  - Initialize Git repo.  
  - Connect MCP Sense.  
  - Configure Python environment (`pyproject.toml`).

 The Architect (Specification & Context Engineering)
- **Master Specification:**  
  - `specs/_meta.md`: Vision & constraints.  
  - `specs/functional.md`: User stories.  
  - `specs/technical.md`: API contracts, DB schema (ERD).  
  
- **Context Engineering ("The Brain"):**  
  - `.cursor/rules`  
    - Project context.  
    - Prime Directive: *Never generate code without checking specs*.  
    - Traceability rules.
- **Tooling & Skills Strategy:**  
  - Developer MCP tools documented in `research/tooling_strategy.md`.  
  - Runtime agent skills defined in `skills/README.md` 

 The Governor (Infrastructure & Governance)
- **Test-Driven Development (TDD):**  
  - `tests/test_trend_fetcher.py` (API contract validation).  
  - `tests/test_skills_interface.py` (skills parameter validation).  
  - Tests should fail initially (empty slots).
- **Containerization & Automation:**  
  - `Dockerfile` for environment.  
  - `Makefile` with commands:  
    - `make setup` → install deps.  
    - `make test` → run failing tests in Docker.  
    - `make spec-check` → verify spec alignment.
- **CI/CD & Governance:**  
  - `.github/workflows/main.yml` → run tests on push.  
  - `.coderabbit.yaml` → enforce spec alignment & security checks.

project-chimera/
├── .github/
│   └── workflows/        # CI/CD configs
├── .vscode/              # IDE settings
├── specs/                # <-- create this here
│   ├── _meta.md
│   ├── functional.md
│   ├── technical.md
│   └── openclaw_integration.md
├── skills/
│   └── README.md
├── research/
│   └── tooling_strategy.md
├── tests/
│   ├── test_trend_fetcher.py
│   └── test_skills_interface.py
├── Dockerfile
├── Makefile
├── .cursor/
│   └── rules
└── pyproject.toml
