# Understanding AI Agents

## ICS499 Software Engineering & Capstone Project

**Author:** Dr. Siva Jasthi
**Course:** ICS499 Software Engineering & Capstone
**Topic:** AI Agents Fundamentals

---

# Learning Objectives

By the end of this document, students should be able to:

* Define what an AI Agent is.
* Differentiate between an LLM, RAG system, Tool-Enabled AI, and an AI Agent.
* Identify the key characteristics of AI Agents.
* Evaluate whether a software system qualifies as an AI Agent.
* Understand how AI Agents are used in real-world applications.

---

# 1. What is an AI Agent?

An **AI Agent** is a software system that can:

1. Understand a goal.
2. Decide what actions are needed.
3. Use tools and external resources.
4. Perform tasks autonomously.
5. Adapt its behavior based on results.

### Simple Definition

> An AI Agent is an AI-powered software system that can perceive information, make decisions, and take actions to achieve a goal with limited human supervision.

---

# 2. Why Are AI Agents Important?

Traditional software follows predefined instructions.

Traditional AI systems answer questions.

AI Agents go one step further:

* They plan.
* They reason.
* They take actions.
* They interact with external systems.

Examples include:

* Customer service agents
* Coding agents
* Research agents
* Scheduling assistants
* CRM automation agents
* Healthcare assistants

---

# 3. AI Agent vs LLM

## Large Language Model (LLM)

An LLM generates text based on user input.

Example:

**User:**

> What is Python?

**LLM:**

> Python is a popular programming language used for web development, data science, machine learning, and automation.

The LLM provides information but takes no action.

---

## AI Agent

**User:**

> Find beginner Python tutorials, create a learning plan, schedule study reminders, and email me the plan.

The Agent:

1. Searches for tutorials.
2. Creates a learning plan.
3. Accesses a calendar.
4. Schedules reminders.
5. Sends an email.

The Agent performs actions rather than simply generating text.

---

# 4. Characteristics of an AI Agent

A true AI Agent typically possesses the following characteristics:

| Characteristic | Description                                     |
| -------------- | ----------------------------------------------- |
| Goal-Oriented  | Works toward achieving a defined objective      |
| Reasoning      | Determines the next best action                 |
| Planning       | Creates multi-step workflows                    |
| Tool Usage     | Uses APIs, databases, files, web services, etc. |
| Memory         | Remembers context and previous interactions     |
| Autonomy       | Operates with minimal human intervention        |
| Adaptability   | Responds to changing situations                 |

---

# 5. The AI Agent Formula

A useful way to think about an AI Agent is:

```text
AI Agent
=
LLM
+
Memory
+
Planning
+
Tools
+
Actions
+
Autonomy
```

Without these additional capabilities, a system is usually not considered an AI Agent.

---

# 6. Anatomy of an AI Agent

```text
                Goal
                  |
                  v
       +-------------------+
       |     AI Agent      |
       +-------------------+
                  |
      +-----------+-----------+
      |                       |
  Reasoning               Memory
      |                       |
      +-----------+-----------+
                  |
                Tools
                  |
      +-----+-----+-----+-----+
      |     |     |     |     |
     API  SQL  Files Email Web
```

---

# 7. AI Systems Spectrum

Not every AI-powered application is an Agent.

| Level | System Type          | Example                     |
| ----- | -------------------- | --------------------------- |
| L0    | Traditional Software | Calculator                  |
| L1    | LLM Chatbot          | ChatGPT answering questions |
| L2    | RAG System           | Document Search Assistant   |
| L3    | Tool-Enabled AI      | AI with Web Search          |
| L4    | AI Agent             | Autonomous Travel Planner   |
| L5    | Multi-Agent System   | Team of Specialized Agents  |

---

# 8. What Is RAG?

RAG stands for:

**Retrieval-Augmented Generation**

A RAG system:

1. Retrieves relevant documents.
2. Sends them to an LLM.
3. Generates an answer.

Example:

```text
User
  |
  v
Question
  |
  v
Vector Database
  |
  v
Relevant Documents
  |
  v
LLM
  |
  v
Answer
```

A RAG system improves knowledge access but usually does not take actions.

---

# 9. RAG vs AI Agent

| Feature               | RAG        | AI Agent |
| --------------------- | ---------- | -------- |
| Retrieves Information | Yes        | Yes      |
| Uses LLM              | Yes        | Yes      |
| Answers Questions     | Yes        | Yes      |
| Plans Actions         | No         | Yes      |
| Uses Multiple Tools   | Usually No | Yes      |
| Takes Actions         | No         | Yes      |
| Works Autonomously    | Limited    | Yes      |

---

# 10. What Does NOT Automatically Make Something an Agent?

Many products use the word "Agent" as a marketing term.

The following alone do NOT make a system an AI Agent:

* Using ChatGPT
* Using an LLM
* Using a Vector Database
* Using RAG
* Calling a single API
* Following a fixed workflow

Example:

```text
User
  |
  v
LLM
  |
  v
Weather API
```

This is often a tool-enabled assistant, not necessarily an AI Agent.

---

# 11. Real-World AI Agent Examples

## Customer Support Agent

Goal:
Resolve customer issues.

Actions:

* Read support tickets
* Search knowledge base
* Generate responses
* Escalate complex cases

---

## CRM Sales Agent

Goal:
Increase sales opportunities.

Actions:

* Analyze leads
* Score prospects
* Send follow-up emails
* Schedule meetings
* Update CRM records

---

## Research Agent

Goal:
Prepare a research report.

Actions:

* Search the web
* Collect information
* Evaluate sources
* Generate summaries
* Produce final report

---

## Coding Agent

Goal:
Develop or modify software.

Actions:

* Read source code
* Create new code
* Run tests
* Fix bugs
* Submit pull requests

---

# 12. Multi-Agent Systems

Some systems use multiple specialized agents.

Example:

```text
                User Request
                       |
        +--------------+--------------+
        |              |              |
        v              v              v
 Research Agent  Coding Agent  Testing Agent
        |              |              |
        +--------------+--------------+
                       |
                 Final Solution
```

Each agent has a specific responsibility.

---

# 13. How to Evaluate Whether Something Is an AI Agent

Use the following checklist.

## AI Agent Qualification Checklist

| Question                                | Yes/No |
| --------------------------------------- | ------ |
| Does it have a goal?                    |        |
| Does it make decisions?                 |        |
| Does it plan multiple steps?            |        |
| Does it use tools?                      |        |
| Does it maintain memory?                |        |
| Does it interact with external systems? |        |
| Does it take actions?                   |        |
| Can it recover from failures?           |        |
| Does it operate autonomously?           |        |

### Interpretation

* 0–3 Yes answers → Not an Agent
* 4–6 Yes answers → Agent-like System
* 7–9 Yes answers → Strong AI Agent

---

# 14. Future of AI Agents

AI Agents are expected to become common in:

* Software Engineering
* Healthcare
* Education
* Finance
* Cybersecurity
* Customer Service
* Research
* Project Management

Future software systems may consist of teams of collaborating AI Agents working alongside human professionals.

---

# Discussion Questions

1. Is ChatGPT by itself an AI Agent? Why or why not?
2. How is RAG different from an AI Agent?
3. Can a workflow automation system be considered an AI Agent?
4. What tools might a CRM AI Agent need?
5. What ethical concerns arise when AI Agents make autonomous decisions?

---

# Capstone Reflection

As part of your capstone project, consider:

* Could your project benefit from an AI Agent?
* What goals would the agent pursue?
* What tools would it need?
* What decisions would it make?
* What actions would it perform autonomously?

Designing AI Agents is becoming an important software engineering skill and will likely be a major component of future intelligent systems.

---

**End of Document**
