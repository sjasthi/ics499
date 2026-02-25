# Testing Techniques and Test Driven Development
**ICS499 – Software Engineering and Capstone Project**  
*Siva Jasthi | Computer Science and Cybersecurity | Metropolitan State University*

---

## Table of Contents
1. [Software Quality: QA vs QC](#1-software-quality-qa-vs-qc)
2. [Software Testing – Types](#2-software-testing--types)
3. [Manual vs Automated Testing](#3-manual-vs-automated-testing)
4. [Test Cases and Acceptance Criteria](#4-test-cases-and-acceptance-criteria)
5. [Test Driven Development (TDD)](#5-test-driven-development-tdd)
6. [Test First vs. Test Last](#6-test-first-vs-test-last)
7. [TDD Benefits](#7-tdd-benefits)
8. [TDD Limitations](#8-tdd-limitations)
9. [Summary](#9-summary)

---

## 1. Software Quality: QA vs QC

Software quality is maintained through two complementary disciplines:

| | Quality Assurance (QA) | Quality Control (QC) |
|---|---|---|
| **Focus** | Process-oriented | Product-oriented |
| **Question** | Are we doing things right? | Is it right? |
| **Approach** | Proactive — assure proper processes are followed | Reactive — after-the-fact verification |
| **Goal** | Do things right to produce the right thing | Validate the end product meets requirements |

> **Key Distinction:** QA is about building quality *into* the process, while QC is about finding defects *after* the fact.

---

## 2. Software Testing – Types

There are 35 recognized types of software testing:

| # | Testing Type | Description |
|---|---|---|
| 1 | **A/B Testing** | Comparing two versions of a system to determine which performs better. |
| 2 | **Acceptance Testing** | Validates the system against business requirements before release. |
| 3 | **Accessibility Testing** | Ensures software is usable by people with disabilities. |
| 4 | **Ad-hoc Testing** | Unstructured testing performed without formal plans or test cases. |
| 5 | **Alpha Testing** | Internal testing by developers or testers before beta testing. |
| 6 | **Beta Testing** | Testing performed by actual users in a real environment. |
| 7 | **Black Box Testing** | Tests functionality without knowing internal code or logic. |
| 8 | **Chaos Testing** | Introducing failures into a system to test its resilience and recovery. |
| 9 | **Compatibility Testing** | Ensures the software works across different devices, browsers, and operating systems. |
| 10 | **Concurrent Testing** | Testing the software with multiple users or tasks running simultaneously. |
| 11 | **Dynamic Testing** | Tests the software during execution to find defects. |
| 12 | **End-to-End Testing** | Tests the entire application flow from start to finish. |
| 13 | **Exploratory Testing** | Simultaneously learning, test designing, and executing tests. |
| 14 | **Functional Testing** | Verifies that the software functions as expected based on requirements. |
| 15 | **Install/Uninstall Testing** | Ensures that the software installs and uninstalls correctly. |
| 16 | **Integration Testing** | Ensures that different modules or components work together correctly. |
| 17 | **Interactive Testing** | Involves a human tester interacting with the application to uncover issues. |
| 18 | **Load Testing** | Tests system behavior under expected and peak user load conditions. |
| 19 | **Mutation Testing** | Modifies a program's source code to ensure that test cases can detect changes. |
| 20 | **Non-functional Testing** | Validates attributes like performance, usability, and reliability. |
| 21 | **Penetration Testing** | Assesses the security of a system by simulating an attack. |
| 22 | **Performance Testing** | Assesses how the system performs under various workloads. |
| 23 | **Recovery Testing** | Ensures that a system can recover from crashes, hardware failures, or other major problems. |
| 24 | **Regression Testing** | Ensures that new code changes haven't broken existing functionality. |
| 25 | **Sanity Testing** | Quick checks to ensure basic functionality after minor code changes. |
| 26 | **Scalability Testing** | Tests the system's ability to scale up or down in response to workload. |
| 27 | **Security Testing** | Identifies vulnerabilities and ensures data protection and safety. |
| 28 | **Single User Performance Testing** | Tests system performance with only one user to measure individual capacity. |
| 29 | **Smoke Testing** | Basic testing to check if the build is stable enough for further testing. |
| 30 | **Static Testing** | Examines code without executing it, often through code reviews. |
| 31 | **Stress Testing** | Tests system limits under extreme load or conditions. |
| 32 | **System Testing** | Validates the complete integrated system to ensure it meets requirements. |
| 33 | **Unit Testing** | Tests individual components or functions in isolation. |
| 34 | **Usability Testing** | Ensures the software is user-friendly and intuitive. |
| 35 | **White Box Testing** | Tests internal structures or workings of an application. |

---

## 3. Manual vs Automated Testing

All of the testing types listed above can be performed either **manually** or through **automated** testing. Manual testing does not scale for large-scale enterprise products, and dedicated teams are typically needed to support the creation of automated tests.

![Manual vs Automated Testing](images_tdd/manual_vs_automated.png)

### Comparison at a Glance

| Dimension | Manual | Automated |
|---|---|---|
| **Execution** | Human-executed | Script-driven |
| **Time** | Faster for quick tasks | Faster in the long run |
| **Money** | Cheaper for quick tasks | Cheaper in the long run |
| **Reliability** | Less | More |
| **Limitations** | Performance tests | Visual aspects |
| **Reusability** | Less | More |
| **Test Coverage** | Less | More |
| **Human Resources** | More | Less |
| **Programming Knowledge** | Unnecessary | Necessary |
| **Control & Debugging** | Easier | Difficult |
| **For Changes** | Small | Constant |
| **Tools** | Unnecessary | Necessary |

**Best use cases:**
- **Manual Testing** — Exploratory testing, usability & UI testing
- **Automated Testing** — Regression testing, performance & load testing

---

## 4. Test Cases and Acceptance Criteria

### Test Cases

A **test case** is a detailed description of a specific scenario or condition that needs to be tested to validate the functionality of a system or software component.

**Key characteristics of a test case:**
1. Focuses on a specific functionality, feature, or module of the system.
2. Includes detailed steps, inputs, and expected outputs.
3. Identifies any preconditions or dependencies required for the test.
4. Can be automated or executed manually.
5. Helps identify defects or issues in the system.

### Acceptance Criteria

**Acceptance criteria** are a set of conditions or requirements that a system or software must meet to be accepted by stakeholders or customers. They are established in collaboration between the development team and the stakeholders to ensure that the project meets the desired goals and objectives.

**Key characteristics of acceptance criteria:**
1. Focuses on the overall project or feature requirements.
2. Describes high-level conditions or outcomes that must be satisfied.
3. Usually written in non-technical language understandable to stakeholders.
4. Determines whether the project meets the business and user needs.
5. Helps stakeholders evaluate and accept the final product.

> **Difference:** Test cases are *technical and granular* (how to test), while acceptance criteria are *business-focused and high-level* (what must be true for the feature to be accepted).

---

## 5. Test Driven Development (TDD)

### Key Quotes

> *"Test-first code tends to be more cohesive and less coupled than code in which testing isn't a part of the intimate coding cycle."*
> — **Kent Beck** ([Wikipedia](https://en.wikipedia.org/wiki/Kent_Beck))

> *"If you can't write a test for what you are about to code, then you shouldn't even be thinking about coding."*

![Kent Beck](images_tdd/kent_beck.png)

### Introduction

- Popularized by **Extreme Programming (XP)**
- A method of **developing** software, not just testing it
- Software is developed in **short iterations**
- **Unit tests are written FIRST**, before any production code

### The TDD Cycle (Red → Green → Refactor)

**Step 1 — Add a Test**
- Use cases and user stories are used to clearly understand the requirement
- Write a failing test that defines the desired behavior

**Step 2 — Run All Tests and See the New One Fail**
- Ensures the test harness is working correctly
- Confirms the test does not mistakenly pass without implementation

**Step 3 — Write Some Code**
- Write only the code designed to pass the test
- No additional functionality should be included (it would be untested)

**Step 4 — Run the Automated Tests and See Them Succeed**
- If tests pass, the programmer can be confident the code meets all tested requirements

**Step 5 — Refactor Code**
- Clean up the code
- Re-run tests to ensure the cleanup did not break anything

### TDD Refactoring Loop

![TDD Refactoring Loop](images_tdd/tdd_refactor_loop.png)

The diagram above illustrates the continuous cycle:
- A **Failing UI Test** triggers **Feature Development**
- Within feature dev, the cycle is: Failing Unit Test → Passing Unit Test → Refactor
- Once the UI Test passes, refactoring at the outer level occurs before moving to the next feature

---

## 6. Test First vs. Test Last

![Test First vs Test Last Diagram](images_tdd/test_first_vs_test_last.png)

| Step | Test First (TDD) | Test Last |
|---|---|---|
| 1 | Pick a piece of functionality | Pick a piece of functionality |
| 2 | Write a **failing test** for a small task | Write **production code** that implements entire functionality |
| 3 | Write **production code** until the test passes | Write **tests** to validate all functionality |
| 4 | Run all tests | Run all tests |
| 5 | Rework code until all tests pass | Rework code until all tests pass |

> **Key Insight:** In Test First, tests shape and constrain the implementation incrementally. In Test Last, the implementation is complete before tests are even considered — often leading to tests that are written to match the code rather than validate requirements.

---

## 7. TDD Benefits

### Instant Feedback
- Developers know **immediately** if new code works
- Quickly reveals if new code **interferes with existing** functionality

### Better Development Practices
- Encourages developers to decompose problems into **manageable, formalized tasks**
- Provides a context in which **low-level design decisions** are made thoughtfully
- By writing only the code necessary to pass tests, designs tend to be **cleaner and clearer**

### Quality Assurance
- Up-to-date tests ensure a **certain level of quality** at all times
- Enables **continuous regression testing**
- TDD drives programmers to write **automatically testable code**
- When a software defect is found, a **unit test is added before fixing** the code

### Lower Rework Effort
- Since the scope of a single test is limited, when a test fails, **rework is easier**
- Eliminating defects early **avoids lengthy debugging** later in the project
- The **"Cost of Change"** principle: the longer a defect remains, the more difficult and costly it is to remove

---

## 8. TDD Limitations

Despite its benefits, TDD is not a silver bullet:

- **Difficult in some situations** — GUIs, relational databases, and web services are hard to test-drive; they often require **mock objects**
- **Lacks upfront design** — The focus is on implementation, with less attention to overall logical structure
- **Blurs distinct phases** — TDD merges design, coding, and testing into one activity, which can reduce architectural clarity

---

## 9. Summary

- **TDD is effective** not only for software testing, but also for **clarifying the goals and scope** of what needs to be built
- It is **technology-driven** — based on the language and technology stack of your project, you can explore different **frameworks and tools** to apply TDD (e.g., JUnit for Java, pytest for Python, Jest for JavaScript)
- The core philosophy: **write the test first, then write just enough code to make it pass, then refactor**

---

*References: Kent Beck — [Wikipedia](https://en.wikipedia.org/wiki/Kent_Beck) | BMC Blogs — [Testing Frameworks](https://www.bmc.com/blogs/testing-frameworks-unit-functional-tdd-bdd/) | ResearchGate — [Test-first vs Test-last](https://www.researchgate.net/figure/Test-first-versus-test-last-development-10_fig1_220772711)*
