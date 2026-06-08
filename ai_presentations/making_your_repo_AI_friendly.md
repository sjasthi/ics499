# How to Make Your Repo AI Agent Friendly 🤖

> A guide for high school computing students

---

## What Is an "AI Agent Friendly" Repo?

AI agents (like GitHub Copilot, Claude Code, or Cursor) can read your code and help you write, fix, and understand it. But just like a new teammate joining your project, an AI works **much better** when your repo is well-organised and clearly explained.

An AI-agent-friendly repo is one where the AI can quickly understand:
- **What** the project does
- **How** it's structured
- **Why** certain decisions were made
- **How** to run, test, and contribute to it

---

## 1. Write a Great `README.md`

The `README.md` is the **first thing** anyone (human or AI) reads when they open your repo. Think of it as the front page of your project.

A good README should include:

- **Project name and description** — What does this project do? One or two sentences.
- **How to install and run it** — Step-by-step instructions.
- **How to test it** — What command runs the tests? What should a working result look like?
- **What it's built with** — Languages, libraries, tools.
- **Folder structure** — A quick overview of where things live.

### Example

```markdown
# Weather Dashboard

A web app that shows the current weather for any city using the OpenWeather API.

## How to Run
1. Clone this repo
2. Open `index.html` in your browser
3. Enter a city name and press Search

## How to Test
Open `tests/index.html` in a browser — all tests should show green.

## Built With
- HTML, CSS, JavaScript
- OpenWeather API

## Folder Structure
weather-dashboard/
├── index.html       # Main page
├── style.css        # Styling
├── app.js           # All JavaScript logic
├── tests/           # Test files
└── README.md        # This file
```

---

## 2. Use Clear, Descriptive File and Folder Names

Avoid vague names like `stuff/`, `test2.js`, or `final_FINAL.py`. AI agents read file names to understand what code does before they even open it.

| ❌ Avoid | ✅ Better |
|---------|----------|
| `a.py` | `calculate_grades.py` |
| `stuff/` | `assets/` or `data/` |
| `script2.js` | `form-validation.js` |
| `final_v3.html` | `index.html` |

---

## 3. Comment Your Code (But Don't Over-Do It)

Comments explain the **why**, not just the what. AI agents use comments to understand intent — especially for tricky logic.

```python
# ❌ Unhelpful comment
x = x + 1  # adds 1 to x

# ✅ Helpful comment
score += 10  # Award bonus points when the player collects a coin
```

For functions, write a short **docstring** explaining what it does, what it takes in, and what it returns:

```python
def calculate_average(numbers):
    """
    Returns the average of a list of numbers.

    Args:
        numbers (list): A list of integers or floats

    Returns:
        float: The average value, or 0 if the list is empty
    """
    if not numbers:
        return 0
    return sum(numbers) / len(numbers)
```

---

## 4. Keep a Clean Folder Structure

Organise your files so related things live together. AI agents navigate your structure the same way you would — by folder names and file names.

A simple structure for a school project might look like:

```
my-project/
├── README.md          # Project description
├── index.html         # Entry point
├── css/
│   └── style.css      # Styles
├── js/
│   └── main.js        # JavaScript
├── data/
│   └── sample.json    # Test data
├── specs/
│   └── decisions.md   # Design decisions (see Section 7)
└── docs/
    └── notes.md       # Extra research or notes
```

---

## 5. Add a `.gitignore` File

A `.gitignore` tells Git (and AI agents) which files to **ignore** — like temporary files, passwords, or system junk. This keeps your repo clean and prevents sensitive info from being shared.

A basic `.gitignore` for web projects:

```
# System files
.DS_Store
Thumbs.db

# Secrets (never commit these!)
.env
secrets.txt

# Dependencies
node_modules/
```

> ⚠️ **Never commit passwords, API keys, or secret tokens to a repo.** Use a `.env` file and add it to `.gitignore`.

---

## 6. Write Meaningful Commit Messages

When you save changes with Git, write a commit message that explains **what changed and why** — not just "fixed stuff".

| ❌ Avoid | ✅ Better |
|---------|----------|
| `update` | `Add search bar to homepage` |
| `fix` | `Fix bug where score reset on page refresh` |
| `changes` | `Style login form with responsive CSS` |

A good format: **verb + what + why (if needed)**

```
Add dark mode toggle to settings page
Fix crash when user submits empty form
Update README with setup instructions
```

---

## 7. Keep a `specs/` Folder for Design Decisions

Some decisions can't be figured out from the code itself — why you chose a particular approach, what business rules the project follows, or why you decided *not* to do something. AI agents can misread your intent without this context.

Keep a `specs/` folder with short markdown files covering:

- Architecture decisions — *why is the code structured this way?*
- Domain concepts — *what does "score", "level", or "user" mean in this project?*
- Style guidelines — *any rules specific to this project?*
- Approaches you considered and discarded — *and why*

**Rules to live by:**

- Keep them **short**. Long specs blur into generated content.
- Keep them **current**. A spec that contradicts the code is worse than no spec.
- Update specs when you change behaviour — ideally in the same commit.

### Example: `specs/scoring.md`

```markdown
# Scoring System

Players earn 10 points per coin collected and 50 points per level completed.

## Considered: Time bonus
We considered adding a time bonus for fast completions but dropped it
because it made the game feel stressful for beginners.

## Rule
Score never goes below zero — negative scoring felt unfair in testing.
```

---

## 8. Set Up a Feedback Loop (Tests + Linting)

This is one of the most powerful things you can do for AI agents. An agent needs to know if what it's doing is **right or wrong** — and automated tools give it that feedback instantly.

- **Linting** — A linter checks your code style automatically (e.g. ESLint for JavaScript, Flake8 for Python). The agent can fix its own issues before going further.
- **Type checking** — If your language supports types, use them. They catch whole categories of bugs automatically.
- **Tests** — Unit tests check individual functions. Smoke tests check that the app runs at all. Either way, the agent can run them and see immediately if something broke.

The key insight: **the agent needs access to the output.** It's not enough to have tests that exist somewhere. The agent should be able to run them locally and read the results. If it can't, the feedback loop is broken.

### Example: a simple smoke test

```javascript
// tests/smoke.test.js
test("calculateAverage returns 0 for empty list", () => {
  expect(calculateAverage([])).toBe(0);
});

test("calculateAverage works for basic input", () => {
  expect(calculateAverage([2, 4, 6])).toBe(4);
});
```

---

## 9. Write a Human-Readable Testing Checklist

Beyond automated tests, keep a short document describing how to **manually verify** your project works. AI agents use this as a self-check before calling a task done.

Include things like:

- How to smoke test the main flows
- What screens to check after a UI change
- How to verify an API change worked

### Example: `docs/testing-checklist.md`

```markdown
# Manual Testing Checklist

Before submitting a PR, check:

- [ ] Home page loads without errors
- [ ] Search returns results for a valid city name
- [ ] Entering an invalid city shows a user-friendly error
- [ ] The page looks correct on a narrow (mobile) screen
```

This gives the agent a checklist to run through — not just "run the tests and hope", but a structured verification process.

---

## 10. Add an `AGENTS.md` — Your Repo's Universal AI Briefing

`AGENTS.md` is becoming the standard cross-tool entry point for AI agents. Over 20,000 repos on GitHub already use it. Unlike `README.md` (written for humans), `AGENTS.md` contains things **a human would figure out but an agent might miss** — project quirks, workflows, gotchas.

Keep it **lean**. It should give context and hints, not reproduce your entire README.

### Example `AGENTS.md`

```markdown
# AGENTS.md

See README.md for project overview and setup.

## Important Conventions
- All functions must have a docstring
- Never edit files in /data — these are fixtures, not source code
- Run `npm test` before committing anything

## Known Gotchas
- The weather API returns temperatures in Kelvin — convert before displaying
- LocalStorage keys are prefixed with `wdash_` to avoid collisions

## Specs
See /specs for architecture decisions and domain rules.
```

### Tool-specific files should just point here

If you use multiple AI tools, avoid duplicating instructions. Instead:

```markdown
# CLAUDE.md
@AGENTS.md
```

```markdown
# .github/copilot-instructions.md
See AGENTS.md for project instructions.
```

This keeps `AGENTS.md` as the single source of truth and avoids contradictions between files.

---

## 11. Add a `CLAUDE.md` for Claude-Specific Instructions

`CLAUDE.md` is read automatically by **Claude Code** at the start of every session. For most projects, pointing it at `AGENTS.md` is enough (as shown above). But you can also add Claude-specific overrides — like preferred coding style or how to run the project locally.

Claude Code supports a hierarchy of memory files:

| File | Who sees it | What it's for |
|------|------------|---------------|
| `CLAUDE.md` (repo root) | Everyone on the team | Shared project rules via source control |
| `CLAUDE.local.md` (repo root) | Just you | Personal preferences — add to `.gitignore`! |
| `~/.claude/CLAUDE.md` (home folder) | Just you, all projects | Your coding style across every project |

---

## 12. Use Skill Files (`SKILL.md`) for Repeatable Tasks

A **skill** is a reusable instruction file that teaches an AI agent a specific workflow — like how to do a code review, write test cases, or check CI status. Instead of typing the same instructions every session, write them once.

Skills are like rules, but they can include scripts and resources — everything encapsulated together.

### What a skill file looks like

```markdown
---
name: code-review
description: >-
  Reviews a file for common beginner mistakes: unclear variable names,
  missing comments, overly long functions, and unused variables.
  Use when asked to review or check code quality.
---

# Code Review Skill

## What to check
1. Are variable names clear and descriptive?
2. Does every function have a comment?
3. Are there any functions longer than 20 lines?
4. Are there any unused variables?

## How to report findings
List each issue with:
- The file and line number
- What the problem is
- A suggested fix
```

### Where skill files live

```
my-project/
├── AGENTS.md
├── CLAUDE.md
├── .claude/
│   └── skills/
│       └── code-review/
│           └── SKILL.md     ← Claude Code discovers this
└── .github/
    └── skills/
        └── code-review/
            └── SKILL.md     ← GitHub Copilot discovers this
```

> 💡 Skills are composable — an agent can load multiple `SKILL.md` files for a complex task, combining expertise from different skills at once.

---

## 13. Progressive Disclosure — Don't Dump Everything Up Front

You don't want to cram every rule and workflow into `AGENTS.md`. Too much information overwhelms the agent (and humans reading it too).

The solution is **progressive disclosure** — show information only when it's needed.

- **`AGENTS.md`** → high-level context, pointers to where things live
- **`specs/`** → loaded when the agent is working on a feature that touches a domain rule
- **Skill files** → loaded only when the agent is doing that specific task

Think of it like a library. The agent doesn't read every book at once — it finds the right shelf when it needs it.

---

## 14. Add `TODO` and `FIXME` Comments

Use `TODO` and `FIXME` tags in your code to mark unfinished work or known bugs. AI agents (and code editors) can find these automatically.

```javascript
// TODO: Add input validation before submitting the form
function submitForm() {
  sendData();
}

// FIXME: This breaks when the list is empty
function getFirstItem(list) {
  return list[0].name;
}
```

---

## 15. Add an `llms.txt` for Web Projects (Optional)

If your project has a public website or documentation, an `llms.txt` file at the root URL acts like a table of contents for AI agents browsing your site. It points them to the most useful pages in plain markdown.

```markdown
# My Quiz App

> A simple quiz builder for students.

## Docs
- [How to create a quiz](/docs/create-quiz.md)
- [API reference](/docs/api.md)
- [Folder structure](/docs/structure.md)
```

This is optional for school projects but a great habit to learn for future work.

---

## Minimum Viable AI-Ready Repo 🚀

If you're starting from zero, do these four things first — they deliver most of the value:

1. **`README.md`** with setup and test commands
2. **Automated tests** that the agent can run locally
3. **`AGENTS.md`** with project-specific context and gotchas
4. **Linting or type checking** if your language supports it

Everything else in this guide is an improvement on top of that foundation.

---

## Full Checklist ✅

- [ ] `README.md` explains the project and includes run + test commands
- [ ] File and folder names are descriptive
- [ ] Functions have comments or docstrings
- [ ] Tricky logic has inline comments explaining *why*
- [ ] `.gitignore` is set up; no secrets committed
- [ ] Commit messages describe what changed
- [ ] Folder structure is logical and tidy
- [ ] `specs/` folder captures key design decisions and discarded approaches
- [ ] Automated tests exist and the agent can run them
- [ ] A manual testing checklist exists for final verification
- [ ] `AGENTS.md` gives AI agents project context and gotchas
- [ ] `CLAUDE.md` (or points to `AGENTS.md`) for Claude-specific tools
- [ ] `CLAUDE.local.md` is in `.gitignore` if used
- [ ] Skill files exist for any repeated or complex tasks
- [ ] `AGENTS.md` is kept lean — details live in specs and skills

---

## Why Does This Matter?

Making your repo AI-ready is basically making it **developer-ready**. Clear entry points, automated verification, documented decisions — these are things good engineers have always done.

AI agents just force the issue.

When your repo is well-structured:

- **AI agents** can give better suggestions, catch bugs faster, and self-verify their work.
- **Your teacher** can read and mark your work more easily.
- **You** can come back months later and still understand what you built.
- **Future collaborators** can jump in without a long catch-up session.

Clean code is kind code — to humans and machines alike. 🙌

---

*Happy coding!*
