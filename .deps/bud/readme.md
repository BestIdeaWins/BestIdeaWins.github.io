# Bud: An Agentic Workspace

**Bud** is an opinionated "Operating System" for agentic work. It transforms a standard file repository into a self-managing, AI-augmented workspace by bridging the gap between human intent (Project Management) and AI execution (Agents & Skills).

Unlike a standard chat interface where context is lost when the window closes, Bud lives in your filesystem. It uses your directories and files as its long-term memory, ensuring that your AI agents understand the *history*, *context*, and *strategic goals* of your work.

## The Problem

*   **LLMs are stateless:** They don't know what you did yesterday or what your long-term goals are.
*   **Context Switching is expensive:** Moving between a project management tool (Jira/Trello), a code editor, and an AI chat window breaks flow.
*   **"Prompt Engineering" is tedious:** You shouldn't have to explain *who* the AI should be or *how* it should think every time you open a session.

## The Solution: A File-Based Agentic System

Bud solves this by structuring your repository into three distinct layers:

### 1. Agents (The "Who")

Located in `.gemini/agents/`. These are persistent personas with specific responsibilities:

*   **Consultant:** Strategic advisor. Focuses on the "Why" and "What First." Uses frameworks like the Pyramid Principle and SCQA to prioritize work and cut through noise.

*   **Architect:** Technical designer. Owns the system structure and technical decisions.

*   **Manager:** Process owner. Ensures the gears are turning and tasks are tracked.

*   **Coder:** Execution engine. Writes the code and implements the designs.

### 2. Skills (The "How")

Located in `.gemini/skills/`. These are modular "cognitive libraries" that agents can load to perform specific tasks effectively.

*   **Project Management:** Getting Things Done (GTD) workflows, scoping, and next-action tracking.

*   **Thinking:** Analysis tools, strategic frameworks, and writing guides.

*   **Domain Skills:** WIP 

### 3. Project Management (The "What")

Located in `docs/pm/`. This directory serves as the "Database" for the agents.

*   **Projects:** Active outcomes with defined goals and "Definition of Done."

*   **Next Actions:** Concrete, actionable tasks for the immediate future.

*   **Inbox:** The landing zone for unstructured thoughts and inputs.

## How It Works

When you interact with Bud (via `gemini-cli`), the agents read the `docs/pm` structure to understand the current state of the world.

*   Need to decide what to work on? The **Consultant** reads `projects` and `next_actions` to give you an 80/20 analysis.

*   Need to plan a new feature? The **Architect** drafts a spec in `docs/` based on the strategic goals.

*   Need to build it? The **Coder** implements the spec, and the **Manager** updates the `next_actions`.

## Installation

```bash
# from project root
git submodule add https://github.com/lynma01/bud .deps/bud
sh .deps/bud/install.sh
```

## Structure Overview

```
/
├── .gemini/           # The Brain (Agents, Skills, Instructions)
│   ├── agents/        # Personas (Consultant, Architect, etc.)
│   └── skills/        # Capabilities (Coding, Writing, PM)
├── docs/              # The Knowledge Base
│   └── pm/            # The Nervous System (GTD Implementation)
│       ├── projects/  # Active outcomes
│       └── inbox.md   # Unsorted inputs
└── ...
```

---
*Built for the `gemini-cli` ecosystem.*
