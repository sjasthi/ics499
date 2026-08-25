# ICS 499 – Software Engineering and Capstone Project

## Research Assignment: Retrieval-Augmented Generation (RAG) and Multimodal RAG

**Total Points:** 50  
**Coding Required:** No

## Overview

Large Language Models (LLMs) have extensive general knowledge, but they do not automatically have access to an organization's private, current, or domain-specific information. **Retrieval-Augmented Generation (RAG)** addresses this problem by retrieving relevant information from external data sources and providing that information to an LLM when answering a user's question.

Traditional RAG systems often focus primarily on text. Real-world organizational information, however, may include PDFs, Word documents, presentations, spreadsheets, tables, photographs, diagrams, audio recordings, meeting recordings, and videos. **Multimodal RAG** extends the RAG concept to these different forms of information.

In this assignment, you will research RAG and Multimodal RAG from the perspective of a **software engineer designing a production LLM-based system**. You are not required to implement or code the system. Your goal is to understand the architecture, technologies, design decisions, tradeoffs, and challenges involved in building and deploying such a system.

---

## Scenario

Assume that you have been asked to design an **AI Knowledge Assistant** for an organization.

The organization has more than **50,000 files** containing:

- Text and HTML documents
- Microsoft Word documents
- PDF files, including scanned PDFs
- PowerPoint presentations
- Spreadsheets
- Tables
- Photographs and images
- Charts and diagrams
- Audio recordings
- Recorded meetings
- Training videos

Users should be able to ask natural-language questions such as:

- *What were the major concerns discussed about Project Alpha?*
- *According to the table in the quarterly report, which product had the highest growth?*
- *What does the architecture diagram say about authentication?*
- *What decision was made during the recorded meeting?*
- *Find the slide containing the network diagram and explain it.*
- *Summarize everything we know about Project Alpha using documents, meeting recordings, and presentations.*

Your job is **not to build the application**. Your job is to research and design an architecture that could make such an application possible.

---

# Assignment Requirements

## 1. RAG Fundamentals – 6 Points

Explain **Retrieval-Augmented Generation (RAG)** in your own words.

Your discussion should address:

- What problem does RAG solve?
- What are the major components of a RAG system?
- What happens when documents are initially added to the system?
- What happens when a user submits a question?
- What are embeddings?
- What is a vector database/vector store?
- How does retrieval work?
- How is retrieved information supplied to an LLM?
- Why might RAG be preferable to simply placing large amounts of information into the prompt?
- How is RAG different from fine-tuning an LLM?

At minimum, illustrate the following basic flow:

**Documents → Extraction → Chunking → Embeddings → Index/Vector Store → Retrieval → Context → LLM → Answer**

---

## 2. From RAG to Multimodal RAG – 5 Points

Explain **Multimodal RAG** and how it differs from traditional text-based RAG.

Discuss why real-world documents are often inherently multimodal. For example, a single PDF might contain:

- Paragraphs
- Images
- Tables
- Charts
- Diagrams
- Captions
- Mathematical equations

Explain why converting everything into plain text may sometimes lose important information.

---

## 3. Ingesting Different Types of Information – 10 Points

Research how a Multimodal RAG system could ingest and process each of the following types of information:

1. Plain text and HTML
2. Word documents
3. PDFs containing selectable text
4. Scanned PDFs
5. Images and photographs
6. Charts and diagrams
7. Tables
8. Spreadsheets
9. Audio recordings
10. Video and recorded meetings

For each type, explain:

- How the information can be extracted
- Whether OCR, transcription, computer vision, document parsing, or another technique is required
- What information should be preserved as metadata
- How the extracted information could eventually become searchable

For audio and video, consider techniques such as:

- Speech-to-text/transcription
- Speaker identification or diarization
- Timestamps
- Captions
- Scene or key-frame extraction
- Visual understanding of selected video frames

---

## 4. Chunking, Embeddings, Metadata, and Indexing – 7 Points

Research how information is prepared for retrieval.

Discuss:

- Why documents are divided into chunks
- Fixed-size vs. semantic/structure-aware chunking
- Chunk overlap
- Preserving document structure
- Metadata
- Text embeddings
- Multimodal embeddings
- Vector databases/vector stores
- Similarity search
- Indexing strategies

Also investigate this important design question:

> Should images, tables, audio, and video always be converted into text before indexing, or can some information be represented and embedded directly using multimodal models?

Explain the advantages and disadvantages of different approaches.

---

## 5. Retrieval and Question Answering – 6 Points

Explain what happens after a user asks a question.

Research concepts such as:

- Query embeddings
- Semantic/vector search
- Keyword search
- Hybrid search
- Metadata filtering
- Reranking
- Context construction
- Prompt construction
- LLM generation
- Citations and source attribution

Also explain how a system might answer a question requiring information from **multiple documents or multiple modalities**.

For example, a question might require information from a PDF, a spreadsheet, and a recorded meeting.

---

## 6. Technology Landscape and Proposed Technology Stack – 6 Points

Research technologies that could be used to **design, develop, and deploy** a Multimodal RAG system.

Investigate representative technologies in areas such as:

- Document parsing
- PDF processing
- OCR
- Table extraction
- Speech-to-text
- Video processing
- Embedding models
- Multimodal models
- Vector databases
- Search engines
- RAG/orchestration frameworks
- LLM APIs/models
- Object/file storage
- Backend/API development
- Cloud deployment
- Security and access control
- Evaluation, monitoring, and observability

Do not simply provide a long list of product names.

Assume that your team must begin developing the system next week. Propose a reasonable technology stack and explain **why you selected each technology**.

Include a table similar to the following:

| Component | Selected Technology | Alternatives Considered | Purpose | Why Selected |
|---|---|---|---|---|
| Document Processing | | | | |
| OCR | | | | |
| Audio Transcription | | | | |
| Embeddings | | | | |
| Vector Database | | | | |
| RAG Framework | | | | |
| LLM / Multimodal Model | | | | |
| Storage | | | | |
| Deployment | | | | |
| Evaluation / Monitoring | | | | |

---

## 7. Multimodal RAG System Architecture – 6 Points

Create a **high-level architecture diagram** for the proposed AI Knowledge Assistant.

Your architecture should clearly illustrate both major workflows:

### Ingestion / Indexing Pipeline

Show how different sources enter and are processed by the system.

For example:

**PDF / Word / Images / Tables / Audio / Video → Processing → Chunking/Transformation → Embeddings → Indexes/Storage**

### Question-Answering Pipeline

Show what happens when a user asks a question.

For example:

**User Question → Query Processing → Retrieval → Reranking → Context Construction → LLM → Answer + Sources**

Your diagram should identify the major technologies or categories of technologies you propose using.

---

## 8. Challenges, Risks, and Evaluation – 4 Points

Identify and discuss **at least five** significant challenges involved in building a production Multimodal RAG system.

Possible topics include:

- Hallucinations
- Retrieving irrelevant information
- Missing relevant information
- OCR errors
- Tables losing their structure
- Understanding diagrams and charts
- Poor audio transcription
- Large video files
- Duplicate documents
- Stale information
- Latency
- Storage requirements
- Cost
- Security
- Privacy
- User permissions/access control
- Confidential documents
- Source attribution
- Evaluating retrieval quality
- Evaluating answer quality

Explain how you would determine whether the RAG system is actually producing useful and trustworthy answers.

---

# Important Architecture Question

As part of your report, address the following question:

> **With modern LLMs supporting increasingly large context windows, is RAG still necessary?**

Compare the circumstances in which you might use:

- RAG
- Long-context prompting
- Fine-tuning
- A combination of these approaches

Your answer should focus on software architecture and engineering tradeoffs rather than simply declaring one approach to be better.

---

# Submission Requirements

Submit a **5–8 page research and system-design report**, excluding references and diagrams.

Your submission must include:

1. Explanation of RAG fundamentals
2. Explanation of Multimodal RAG
3. Discussion of ingestion for different data types
4. Discussion of chunking, embeddings, metadata, and indexing
5. Discussion of retrieval and question answering
6. Proposed technology stack with comparison table
7. At least one Multimodal RAG architecture diagram
8. Discussion of challenges and evaluation
9. Discussion of RAG vs. long-context prompting vs. fine-tuning
10. References

### References

Use at least **8 credible technical references**.

Good sources include:

- Official product and framework documentation
- Research papers
- Technical architecture documentation
- Cloud-provider architecture guides
- Reputable engineering articles

Do not rely primarily on AI-generated summaries or marketing material.

All sources must be properly cited.

---

# Grading

| Section | Points |
|---|---:|
| 1. RAG Fundamentals | 6 |
| 2. From RAG to Multimodal RAG | 5 |
| 3. Ingesting Different Types of Information | 10 |
| 4. Chunking, Embeddings, Metadata, and Indexing | 7 |
| 5. Retrieval and Question Answering | 6 |
| 6. Technology Landscape and Proposed Stack | 6 |
| 7. Multimodal RAG System Architecture | 6 |
| 8. Challenges, Risks, and Evaluation | 4 |
| **Total** | **50** |

---

## Evaluation Expectations

Higher-scoring submissions will demonstrate that the student understands **how the pieces fit together as a software system**, rather than merely defining AI terminology.

You should be able to explain your proposed architecture to a software development team and answer questions such as:

- What happens when a new PDF is uploaded?
- What happens when a scanned document is uploaded?
- How does the system handle a table inside a PDF?
- How does the system process an audio or video recording?
- Where are embeddings stored?
- How does the system determine which information is relevant to a question?
- How does the LLM receive the retrieved information?
- How can users verify the source of an answer?
- How would the architecture scale as the organization's collection grows?
- How would confidential information be protected?

The goal of this assignment is to develop a practical understanding of the **design decisions, technologies, and engineering challenges involved in building modern RAG and Multimodal RAG applications.**
