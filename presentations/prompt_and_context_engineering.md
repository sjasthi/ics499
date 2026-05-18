# Prompt and Context Engineering Fundamentals for ICS499 Capstone

## Table of Contents
1. [Introduction](#introduction)
2. [Core Prompt Engineering Techniques](#core-prompt-engineering-techniques)
3. [Structured Prompt Templates](#structured-prompt-templates)
4. [Context Engineering](#context-engineering)
5. [Quick Reference: Best Prompt Framework](#quick-reference-best-prompt-framework)
6. [Examples](#examples)

---

## Introduction

**Prompt engineering** is the art and science of crafting inputs to Large Language Models (LLMs) to elicit accurate, relevant, and useful outputs. **Context engineering** extends this by strategically designing the information environment in which the prompt operates.

As capstone students integrating AI into production systems, mastering prompt engineering is essential for:
- Reducing hallucinations and errors
- Achieving consistent, reproducible results
- Scaling AI solutions across teams
- Building maintainable AI applications

---

## Core Prompt Engineering Techniques

### 1. Zero-Shot Prompting
Ask the model to perform a task without any examples.

**When to use:** Simple, well-defined tasks where the model has strong training data.

```
Prompt: "Classify the sentiment of this review: 'The product exceeded my expectations!'"
```

**Pros:** Fast, minimal tokens, no example preparation needed.
**Cons:** May perform poorly on specialized or complex tasks.

---

### 2. One-Shot Prompting
Provide a single example to demonstrate the desired format and behavior.

**When to use:** When you need to establish a pattern or format.

```
Prompt: "
Example:
Input: 'I love this movie!'
Output: Positive

Now classify: 'This is disappointing.'
"
```

**Pros:** Better than zero-shot with minimal overhead.
**Cons:** Single example may not be representative enough.

---

### 3. Few-Shot Prompting
Provide multiple examples (typically 2-5) to establish a pattern.

**When to use:** Complex tasks, domain-specific work, or when consistency matters.

```
Prompt: "
Example 1:
Input: 'Great service and fast delivery!'
Output: Positive

Example 2:
Input: 'Poor quality, waste of money.'
Output: Negative

Example 3:
Input: 'It's okay, nothing special.'
Output: Neutral

Now classify: 'Amazing design and excellent support!'
"
```

**Pros:** Significant performance improvement; establishes clear patterns.
**Cons:** Uses more tokens; requires careful example selection.

---

### 4. Chain-of-Thought (CoT)
Ask the model to explain its reasoning step-by-step before providing an answer.

**When to use:** Complex reasoning, multi-step problems, or when you need to verify logic.

```
Prompt: "
Let's solve this step by step:
Problem: If a store sells 100 items on Monday and 30% more on Tuesday, how many total items sold across both days?

Step 1: Calculate Tuesday's sales
Step 2: Add Monday and Tuesday sales
Step 3: Provide the final answer
"
```

**Pros:** Improves accuracy on complex reasoning; enables error detection.
**Cons:** Longer responses; may increase latency.

---

### 5. Tree-of-Thought (ToT)
Explore multiple reasoning paths simultaneously and evaluate them.

**When to use:** Complex decision-making, planning, or problems with multiple valid approaches.

```
Prompt: "
Consider this problem: 'Design a recommendation system for an e-commerce platform.'

Explore three different approaches:
1. Collaborative filtering
2. Content-based filtering
3. Hybrid approach

For each approach, evaluate:
- Scalability
- Accuracy
- Implementation complexity

Then recommend the best overall approach and explain why.
"
```

**Pros:** Comprehensive exploration of solution space; identifies trade-offs.
**Cons:** More expensive; requires careful orchestration.

---

### 6. Role-Based Prompting
Assign the model a specific role or persona to shape responses.

**When to use:** When you want consistent tone, expertise level, or perspective.

```
Prompt: "
You are a senior software architect with 20 years of experience.
Explain microservices architecture in a way suitable for junior developers.
"
```

**Pros:** Provides behavioral guidance; improves response quality alignment.
**Cons:** Model may not always embody the role consistently.

---

### 7. Constraint-Based Prompting
Explicitly specify limitations or requirements.

**When to use:** When output format, length, or content restrictions are critical.

```
Prompt: "
Write a summary of climate change in exactly 50 words. Use only scientific terminology.
Do not mention political opinions.
"
```

**Pros:** Ensures outputs meet specific requirements.
**Cons:** Overly strict constraints may reduce quality; may require refinement.

---

## Structured Prompt Templates

### 1. RACE Framework
**Role | Action | Context | Constraints & Examples**

```
Role: You are an expert Python developer specializing in performance optimization.
Action: Review this code and identify performance bottlenecks.
Context: This code processes 1M records daily in a production environment.
Constraints: Suggest solutions that don't require database schema changes.
```

---

### 2. CRAFT Framework
**Context | Role | Ask | Format | Task**

```
Context: Our startup is building a customer analytics dashboard.
Role: You are a UX designer with SaaS experience.
Ask: What are the top 3 features users need most in the first version?
Format: Provide a numbered list with brief explanations.
Task: Prioritize by implementation effort and user impact.
```

---

### 3. CO-STAR Framework
**Context | Objective | Style | Tone | Audience | Response Format**

```
Context: A fintech company needs compliance documentation.
Objective: Explain data privacy regulations clearly.
Style: Professional but accessible.
Tone: Authoritative yet approachable.
Audience: Non-technical stakeholders and legal teams.
Response Format: Executive summary followed by detailed sections.
```

---

### 4. CRISPE Framework
**Capacity & Role | Insight | Statement | Personality | Experiment**

```
Capacity & Role: Act as a senior business analyst.
Insight: Market trends for SaaS platforms in 2026.
Statement: Provide actionable insights, not general observations.
Personality: Professional, data-driven, solution-oriented.
Experiment: Include one unconventional approach worth testing.
```

---

### 5. RTF Framework
**Result | Task | Format**

```
Result: Generate code for a REST API endpoint.
Task: Create a POST endpoint that validates and stores user registration data.
Format: Return only the Python code with inline comments, no explanations.
```

---

### 6. DARE Framework
**Directive | Action | Restriction | Exception**

```
Directive: Analyze security vulnerabilities in this application code.
Action: Identify specific issues, severity levels, and remediation steps.
Restriction: Do not suggest third-party libraries as solutions; focus on code-level fixes.
Exception: You may reference industry standards like OWASP Top 10.
```

---

### 7. React Framework
**Retrieve | Evaluate | Act | Confirm**

```
Retrieve: Gather information about cloud deployment best practices.
Evaluate: Compare AWS, Google Cloud, and Azure for a startup's needs.
Act: Provide a deployment architecture recommendation.
Confirm: Validate your recommendation with cost-benefit analysis.
```

---

### 8. Prompt Chaining
Break complex tasks into a sequence of related prompts, where each builds on previous results.

**When to use:** Multi-stage problems, iterative refinement, or progressive complexity.

```
Prompt 1: "Generate 5 innovative product ideas for a fitness startup."
↓
Prompt 2: "For the top 2 ideas, outline a go-to-market strategy."
↓
Prompt 3: "Create a 90-day execution plan for the most viable idea."
```

**Pros:** Handles complexity through decomposition; enables human-in-the-loop checkpoints.
**Cons:** Requires orchestration; errors can cascade.

---

## Context Engineering

Context engineering is the strategic design of the information, examples, and constraints that surround a prompt to shape how an LLM processes and responds to it. It goes beyond the prompt itself to include system instructions, knowledge bases, conversation history, and the entire environment in which the model operates, ensuring that all available context aligns with your goals and improves output quality.

### Principles

1. **Relevance**: Include only information necessary for the task.
2. **Clarity**: Present information in a structured, unambiguous way.
3. **Completeness**: Provide sufficient detail to prevent assumptions.
4. **Precedence**: Place critical information early in the prompt.

### Techniques

#### a) Persona/Role Assignment
Establish expertise and perspective.

```
"You are a DevOps engineer with 15 years of experience designing CI/CD pipelines."
```

#### b) System Instructions (System Prompts)
High-level behavioral guidelines that shape all interactions.

```
"You are a helpful, accurate, and concise technical assistant. 
Prioritize clarity over brevity. 
Always acknowledge uncertainty. 
Never make up information."
```

#### c) Knowledge Injection
Provide domain-specific information the model may lack.

```
"Our company uses a proprietary framework called 'QuantumDB' with these key features:
- Custom query language: QQL
- Real-time indexing: RIndex
- Distributed cache: QCache

When architecting solutions, prefer QuantumDB-native approaches over external tools."
```

#### d) Constraint Specification
Define boundaries and requirements explicitly.

```
"Requirements:
- Output must be valid JSON
- No external API calls
- Response time < 2 seconds
- Target audience: 12-year-olds"
```

#### e) Example-Based Anchoring
Use high-quality examples to establish expected output patterns.

```
"Example outputs:
[Good] Clear, actionable, cites sources.
[Bad] Vague, contradictory, lacks evidence.
[Target] Match the 'Good' pattern in your response."
```

---

## Quick Reference: Best Prompt Framework

### For Capstone Students: The Essential Framework

When you have **limited time** or need a **reliable, universally applicable** approach, use this template:

```
**[ROLE + CONTEXT + TASK + FORMAT + CONSTRAINTS]**

Role: [Who should handle this? What expertise should I have?]
Context: [Background information, constraints, and why this matters]
Task: [Specific action you want performed]
Format: [How should the output be structured?]
Constraints: [Limitations, requirements, tone, audience]
```

### Why This Works

- **Role** → Establishes expertise and perspective
- **Context** → Provides necessary background and stakes
- **Task** → Clearly defines the objective
- **Format** → Ensures usable output
- **Constraints** → Prevents hallucinations and sets boundaries

### Real Example

```
Role: You are a senior full-stack architect designing a microservices infrastructure.

Context: We're migrating a monolithic e-commerce platform (10M daily users, $100M revenue) to microservices. 
We have 6 months and a team of 8 engineers. Budget is $500K for infrastructure.

Task: Design a phased migration strategy that minimizes downtime and maintains system stability.

Format: Provide a 3-phase plan with:
- Timeline for each phase
- Key services to decouple
- Resource requirements
- Risk mitigation strategies

Constraints:
- Assume we have PostgreSQL expertise but limited Kubernetes experience
- Prefer open-source tools over proprietary solutions
- Compliance: GDPR, PCI-DSS
- Target audience: C-level executives and engineering leads
```

---

## Examples

### Example 1: Data Analysis Task

**Framework: Role + Context + Task + Format + Constraints**

```
Role: You are a data scientist specializing in predictive analytics.

Context: Our SaaS company has 5 years of user behavior data. 
We want to identify churn patterns to improve retention.

Task: Design a machine learning approach to predict which users are likely to churn in the next 30 days.

Format: 
1. Problem definition
2. Data requirements
3. Feature engineering approach
4. Model recommendation with pros/cons
5. Evaluation metrics

Constraints:
- We use Python and have limited GPU resources
- Explain in terms non-technical stakeholders can understand
- Include implementation complexity estimates
```

---

### Example 2: Code Review Task

**Framework: DARE**

```
Directive: Review this TypeScript component for security and performance issues.

Action: 
- List specific vulnerabilities (if any)
- Rate each issue: Critical/High/Medium/Low
- Suggest code-level fixes (not library changes)
- Estimate refactoring effort

Restriction: 
- Don't suggest framework changes (we use React 18)
- Focus on production-ready recommendations only

Exception:
- You may reference industry best practices like OWASP
```

---

### Example 3: Creative/Strategic Task

**Framework: Tree-of-Thought**

```
You are a product strategist. Consider three different go-to-market approaches for an AI coding assistant:

Approach 1: B2C (direct to developers)
- Pros: Direct feedback loop
- Cons: High CAC
- Key metrics to track: Retention, NPS

Approach 2: B2B (enterprise via DevTools partners)
- Pros: Higher LTV, fewer accounts
- Cons: Longer sales cycles
- Key metrics to track: Enterprise retention, usage depth

Approach 3: Open-source + commercial (freemium model)
- Pros: Community validation, developer buy-in
- Cons: Monetization challenges
- Key metrics to track: Adoption rate, conversion to paid

Evaluate each approach and recommend the best strategy for Year 1.
```

---

## Best Practices Summary

1. **Start specific**: Avoid vague prompts. The more detailed your input, the better the output.
2. **Use examples**: Few-shot learning consistently outperforms zero-shot.
3. **Separate concerns**: Use different sections for role, context, and constraints.
4. **Test and iterate**: Refine prompts based on output quality.
5. **Version your prompts**: Track prompt changes and their impact on output.
6. **Chain for complexity**: Break complex tasks into sequential prompts.
7. **Inject domain knowledge**: Provide context the model might not have.
8. **Be explicit about format**: Specify JSON, markdown, code, or free text.

---

## Resources for Further Learning

- [OpenAI Prompt Engineering Guide](https://platform.openai.com/docs/guides/prompt-engineering)
- [Anthropic Constitutional AI principles](https://www.anthropic.com/research/constitutional-ai)
- [LangChain Documentation (for prompt chaining)](https://python.langchain.com/docs/guides/smart_router/structured_output)
- [Research papers: "Chain-of-Thought Prompting Elicits Reasoning in Large Language Models" (Wei et al., 2022)](https://arxiv.org/abs/2201.11903)
- [Research papers: "Tree of Thoughts" (Yao et al., 2023)](https://arxiv.org/abs/2305.10601)

---

## Questions for Capstone Projects

As you integrate LLMs into your capstone, consider:

1. What is the task you're asking the model to perform?
2. What domain knowledge does the model lack?
3. How will you know the output is correct?
4. What are the failure modes, and how will you mitigate them?
5. How will you version and test your prompts?
6. What constraints are non-negotiable for your use case?

---

**Last Updated:** May 2026  
**Audience:** ICS499 Capstone Students  
**Author Note:** Prompt engineering is evolving rapidly. Test frameworks in your specific context and adapt based on your model and task requirements.
