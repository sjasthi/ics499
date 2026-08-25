# ICS 499 – Software Engineering and Capstone Project

## Assignment: SQL Data Anonymization

**Points: 50**

## Overview

Organizations frequently need to use production-like data for software development, testing, demonstrations, training, and analytics. However, copying real data into these environments can expose Personally Identifiable Information (PII).

In this assignment, you will develop a program that **anonymizes sensitive information contained in a SQL file** while preserving the usefulness and structure of the data.

You will be provided with a SQL file that may contain SQL statements such as `CREATE TABLE` and `INSERT` statements. Your primary focus is processing the **INSERT statements** and replacing sensitive information with realistic synthetic data.

Your solution should produce a new SQL file that can be used in place of the original without revealing the original personal information.

## Learning Objectives

After completing this assignment, you should be able to:

- Explain why data anonymization is important in software systems.
- Identify Personally Identifiable Information (PII) in structured data.
- Research appropriate data anonymization techniques.
- Design a software solution for anonymizing SQL data.
- Generate realistic synthetic replacement data.
- Maintain consistency and relationships across anonymized records.
- Preserve data formats and SQL structure.
- Evaluate and test whether an anonymization solution works correctly.
- Research and select appropriate libraries and technologies for a software engineering problem.

## The Problem

Assume that an organization has exported data from a production database into a SQL file.

The file may contain statements such as:

```sql
CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(100),
    address VARCHAR(200),
    email VARCHAR(100),
    phone VARCHAR(30)
);
```

and:

```sql
INSERT INTO customers
VALUES
(101, 'John Smith', '123 Main Street, Minneapolis, MN 55401',
 'john.smith@gmail.com', '612-555-1234');
```

The SQL file contains real personal information and therefore should not be distributed to developers, testers, students, or other users.

Your task is to create a program that transforms the SQL file into an **anonymized SQL file containing realistic synthetic information**.

For example:

```text
Original:

John Smith
123 Main Street, Minneapolis, MN 55401
john.smith@gmail.com
612-555-1234
```

might become:

```text
Anonymized:

Michael Anderson
742 Oak Avenue, St. Paul, MN 55104
michael.anderson@example.com
651-555-7821
```

The actual anonymization strategy is for **you to research, design, and implement**.

## 1. Information That Must Be Anonymized

For this assignment, concentrate on the following four categories:

1. **Names**
2. **Addresses**
3. **Email addresses**
4. **Phone numbers**

You are not required to identify or anonymize other types of information.

## 2. Realistic Synthetic Data

Simply deleting sensitive information is not sufficient.

For example, replacing every name with:

```text
XXXX
```

does not produce useful test data.

Your program should generate **realistic synthetic replacement values**.

For example:

```text
John Smith → Michael Anderson
```

rather than:

```text
John Smith → XXXXX
```

Similarly, email addresses, addresses, and phone numbers should remain realistic and syntactically reasonable.

The resulting SQL database should resemble a realistic database while no longer containing the original personal information.

## 3. Consistent Anonymization

An important requirement is **consistency**.

Suppose `John Smith` appears 20 times in the SQL file. Your program should not generate 20 different names.

If:

```text
John Smith → Michael Anderson
```

then every appropriate occurrence of `John Smith` should become `Michael Anderson`.

The same principle applies to:

- Names
- Addresses
- Email addresses
- Phone numbers

## 4. Consistency Across Tables

The SQL file may contain multiple tables.

For example, the same customer's information might occur in:

- `CUSTOMER`
- `ORDER`
- `CONTACT`
- `SHIPPING`

If the same personal information occurs in multiple tables, your anonymization should remain consistent across the entire SQL file.

Your solution should therefore consider the SQL file as a whole rather than treating each occurrence independently.

## 5. Preserve Appropriate Formats

The anonymized data should preserve reasonable data formats.

For example:

```text
Original phone:
612-555-1234

Synthetic phone:
763-555-8472
```

rather than:

```text
PHONE123
```

Similarly:

```text
Original:
john.smith@gmail.com

Synthetic:
michael.anderson@example.com
```

should remain a syntactically valid email address.

Addresses should resemble realistic addresses.

Your goal is to produce data that could reasonably be used for **software development and testing**.

## 6. One-Way Anonymization

This assignment requires **one-way anonymization**.

You do **not** need to provide functionality for recovering the original values.

For example, after:

```text
John Smith → Michael Anderson
```

your program does not need to support converting `Michael Anderson` back to `John Smith`.

You are also **not required to generate or submit a mapping file** containing the original and replacement values.

## 7. Preserve the SQL

Your program should create a **new SQL file** containing the anonymized data.

SQL statements unrelated to the anonymized values should remain usable.

For example:

```sql
INSERT INTO customers
VALUES
(101, 'John Smith', '123 Main Street', 'john@example.com', '612-555-1234');
```

might become:

```sql
INSERT INTO customers
VALUES
(101, 'Robert Miller', '825 Lake Avenue', 'robert.miller@example.com', '763-555-8452');
```

Values such as `customer_id = 101` should remain unchanged unless modification is necessary for your design.

The resulting SQL should remain valid and usable.

## 8. Technology Choice

You may use **any programming language or technology**.

Examples include, but are not limited to:

- Python
- Java
- JavaScript / Node.js
- C#
- PHP
- Go
- Other appropriate technologies

You may also use external libraries, including:

- Python Faker
- Java Faker
- Equivalent synthetic-data libraries
- SQL parsing libraries
- Regular-expression libraries
- Other open-source libraries

Part of the assignment is determining which technologies are appropriate.

You are expected to **research available options and make your own technical decisions**.

## 9. Use of Generative AI

You may use Generative AI tools such as ChatGPT, Claude, GitHub Copilot, Gemini, or other AI programming assistants.

You may use these tools for:

- Research
- Understanding anonymization
- Designing your approach
- Generating or reviewing code
- Debugging
- Testing
- Documentation

However, **you are responsible for the final solution**.

You should be able to explain:

- How your program works
- Why you selected your approach
- How consistency is maintained
- How synthetic data is generated
- What external libraries are being used
- How you tested your solution

Do not submit code that you cannot explain.

## 10. Research Component

Before implementing the program, research **data anonymization**.

At minimum, you should understand the difference between concepts such as:

- Data masking
- Anonymization
- Pseudonymization
- Synthetic data
- Hashing
- Tokenization

Not every technique is necessarily appropriate for this assignment.

You must determine which techniques are appropriate for producing **realistic, consistent, one-way synthetic data**.

Briefly explain your design decisions in your documentation.

## 11. Testing

Testing is an important part of this assignment.

Your testing should demonstrate that:

- Names are anonymized.
- Addresses are anonymized.
- Emails are anonymized.
- Phone numbers are anonymized.
- Original PII does not remain in the generated SQL.
- Repeated values are anonymized consistently.
- Values appearing across multiple tables remain consistent.
- Synthetic values have reasonable formats.
- SQL statements remain valid.
- Non-sensitive values are not unnecessarily modified.

Performance is **not** an important consideration for this assignment. Correctness is more important than execution speed.

## 12. Required Deliverables

### 1. Source Code

Submit all source code required to run your anonymization program.

### 2. README

Your README should explain:

- Programming language and technologies used
- External libraries used
- How to install dependencies
- How to run the program
- Expected input
- Generated output
- Your anonymization strategy
- How consistency is maintained
- Important design decisions
- Known limitations

### 3. Original SQL File

Include the SQL file used for testing.

### 4. Anonymized SQL File

Include the anonymized SQL file generated by your program.

### 5. Design / Approach

Provide a short explanation of your approach.

Explain:

- How you identify fields requiring anonymization
- How synthetic data is generated
- How you maintain consistency
- How you preserve SQL structure
- Why you selected your particular approach

This may be included in your README.

### 6. Testing Evidence

Provide evidence demonstrating that your solution satisfies the assignment requirements.

### 7. GitHub Repository

Submit a link to your GitHub repository containing the complete project.

## Grading – 50 Points

| Component | Points |
|---|---:|
| Names correctly anonymized using realistic synthetic data | 5 |
| Addresses correctly anonymized using realistic synthetic data | 5 |
| Email addresses correctly anonymized | 5 |
| Phone numbers correctly anonymized | 5 |
| Consistent anonymization of repeated values | 5 |
| Consistency across tables / SQL statements | 5 |
| SQL structure and non-sensitive data appropriately preserved | 5 |
| Research, design decisions, and technology selection | 5 |
| Testing and evidence of correctness | 5 |
| README, documentation, and overall project quality | 5 |
| **Total** | **50** |

## Important Design Questions

There is **no single correct implementation** for this assignment.

You are expected to investigate the problem and make appropriate software engineering decisions.

Consider questions such as:

- How will you recognize which values need to be anonymized?
- How will you generate realistic synthetic values?
- How will you ensure that the same input always produces the same replacement?
- How will you maintain consistency across tables?
- Should names and email addresses have relationships with each other?
- How will you handle SQL strings containing apostrophes or other special characters?
- How will you ensure that your generated SQL is still valid?
- How will you verify that original PII has actually been removed?

Your solution should demonstrate not only programming ability, but also **software engineering judgment**.

## Final Goal

Given:

```text
original.sql
```

your program should produce something similar to:

```text
anonymized.sql
```

The resulting file should:

**look realistic, remain useful, preserve appropriate relationships and formats, and no longer expose the original names, addresses, email addresses, or phone numbers.**

You are responsible for researching and determining the best way to accomplish that goal.
