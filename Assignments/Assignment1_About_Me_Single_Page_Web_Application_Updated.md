# ICS 499 - Software Engineering & Capstone Project

**Instructor:** Siva Jasthi\
**Email:** Siva.Jasthi@metrostate.edu

# Assignment 1: About Me - Single Page Web Application

**Points:** 25\
**Assignment Type:** Individual\
**Deliverable:** A complete single-page web application, GitHub
repository, and live Vercel deployment

------------------------------------------------------------------------

## 1. Objective

The purpose of this assignment is to:

-   Help you establish a professional technical presence.
-   Reinforce fundamentals of front-end web development.
-   Practice structuring, documenting, packaging, and deploying a
    software deliverable.
-   Prepare a reusable personal profile that can evolve into a portfolio
    site.
-   Gain experience publishing a web application to the Internet.

By the end of this assignment, you will build a single-page web
application that introduces you as a software engineering student and
aspiring professional. You will also publish the application to GitHub
and deploy it to Vercel so that it is accessible through a public URL.

------------------------------------------------------------------------

## 2. Assignment Description

You will design and develop a single-page website titled **"About Me"**
using standard web technologies. The page should clearly present your
academic background, technical skills, and project experience.

The application must:

-   Launch from `index.html`.
-   Run locally in a browser without requiring a server.
-   Be stored in a GitHub repository.
-   Be deployed to Vercel and accessible through a public URL.

------------------------------------------------------------------------

## 3. Required Content

Your single-page application must include the following sections.

### A. Profile Overview

-   Your full name
-   Current major and university
-   A short professional summary (3-5 sentences)

### B. Courses Taken

-   List relevant courses completed so far.
-   Include course titles such as Data Structures, Software Engineering,
    Databases, Web Development, etc.
-   Display the courses in an **HTML table**.

### C. Technical Skills

Include the technologies and tools with which you have experience:

-   **Programming languages:** Java, Python, JavaScript, C++, etc.
-   **Technologies / frameworks:** HTML, CSS, React, Node.js, SQL, Git,
    AWS, etc.
-   **Tools:** GitHub, VS Code, Docker, IntelliJ, Eclipse, etc.
-   **AI tools:** Claude, ChatGPT, GitHub Copilot, or other AI tools you
    use.

### D. Projects / Websites

Include at least **two projects** you have worked on.

For each project, include:

-   Project name
-   Brief description (2-3 lines)
-   Technologies used
-   GitHub repository or live website link, if available

### E. Professional Links

-   LinkedIn profile - optional
-   GitHub profile - **required; create one if you do not have one**
-   Portfolio or personal website - optional

------------------------------------------------------------------------

## 4. Technical Requirements

### Required

-   Must be a single-page web application.
-   Must include `index.html` as the entry point.
-   Must run locally by double-clicking `index.html`.
-   Must be pushed to a GitHub repository.
-   Must be deployed and accessible through Vercel.
-   Use:
    -   HTML5
    -   CSS - inline, internal, or external
    -   JavaScript - optional but encouraged

### Optional - Good Practice

These items do not carry extra points but are strongly encouraged:

-   Responsive layout / mobile-friendly design
-   Navigation bar or internal page sections
-   Smooth scrolling or basic interactivity
-   Clean UI design and consistent styling

------------------------------------------------------------------------

## 5. Folder Structure

Your project should follow this structure:

``` text
AboutMe_LastName_FirstName/
|-- index.html
|-- css/
|   `-- styles.css       (optional)
|-- js/
|   `-- script.js        (optional)
|-- assets/
|   `-- images/          (optional)
`-- README.md            (recommended)
```

The page must load correctly even if the optional folders are not used.

------------------------------------------------------------------------

## 6. GitHub Requirements

Create a GitHub repository for the assignment. A suggested repository
name is:

``` text
AboutMe-LastName-FirstName
```

Your repository should contain the complete source code for the
application.

### Basic Git Workflow

If you are comfortable using Git from the command line, you can use
commands similar to these:

``` bash
git init
git add .
git commit -m "Complete About Me assignment"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git
git push -u origin main
```

You may also use GitHub Desktop or the Git integration available in your
IDE.

Before submitting, open your GitHub repository in a browser and verify
that `index.html` and the rest of your project files are present.

------------------------------------------------------------------------

## 7. Deploying Your Application to Vercel

In addition to running locally, your application must be published on
**Vercel**.

### Step 1 - Push Your Application to GitHub

Make sure the latest version of your application has been committed and
pushed to your GitHub repository.

### Step 2 - Sign In to Vercel

1.  Go to [Vercel](https://vercel.com/).
2.  Sign up or sign in.
3.  Using your GitHub account is recommended because the application
    will be deployed directly from your GitHub repository.

### Step 3 - Create a Vercel Project

1.  From the Vercel dashboard, select **Add New -\> Project**.
2.  Connect/authorize GitHub if prompted.
3.  Find the GitHub repository containing your About Me application.
4.  Select **Import**.

### Step 4 - Configure the Project

For a basic HTML/CSS/JavaScript application, Vercel can serve the static
files directly.

-   Make sure `index.html` is in the root of the repository/project.
-   Use the project root as the **Root Directory** unless you placed the
    website in a subfolder.
-   No environment variables should be necessary for this assignment.
-   For a simple static HTML/CSS/JavaScript site, you should not need a
    custom build command.

Then select **Deploy**.

### Step 5 - Verify the Deployment

After deployment finishes:

1.  Open the production URL provided by Vercel. It will normally look
    similar to:

    ``` text
    https://your-project-name.vercel.app
    ```

2.  Verify that:

    -   The page loads successfully.
    -   Images appear correctly.
    -   CSS is applied.
    -   Navigation and links work.
    -   GitHub, LinkedIn, and project links work.
    -   The application is usable on both desktop and mobile-sized
        screens.

### Step 6 - Test the Public URL

Open the Vercel URL in a private/incognito browser window. This is a
useful way to confirm that the instructor can access the application
without being signed in to your accounts.

### Updating Your Site

Because the Vercel project is connected to GitHub, subsequent pushes to
the connected production branch can automatically trigger new
deployments. Therefore, if you make changes after the initial
deployment, commit and push those changes and verify that the updated
application appears on Vercel.

------------------------------------------------------------------------

## 8. Use of Generative AI

**You are allowed and encouraged to use generative AI tools for this
assignment.**

You may use tools such as:

-   ChatGPT
-   Claude
-   GitHub Copilot
-   Gemini
-   Other AI coding or design assistants

You may use AI to:

-   Generate or improve HTML, CSS, and JavaScript.
-   Suggest page layouts and visual designs.
-   Troubleshoot errors.
-   Explain code that you do not understand.
-   Improve writing and professional descriptions.
-   Suggest responsive design improvements.
-   Help with Git, GitHub, or Vercel deployment.
-   Review and improve your completed application.

### Your Responsibility

Using AI does **not** remove your responsibility for the submitted work.

You should:

-   Review the code generated by AI.
-   Test the application yourself.
-   Make sure the application satisfies all assignment requirements.
-   Understand the major components of your application.
-   Be prepared to explain how your application works.

Do not submit AI-generated code blindly without reviewing and testing
it.

### AI Usage Documentation

Add a short section titled **AI Usage** to your `README.md`. Briefly
identify:

1.  Which AI tool(s) you used.
2.  How you used them.
3.  One or two examples of how AI helped you complete or improve the
    assignment.

Example:

``` markdown
## AI Usage

I used ChatGPT and Claude while completing this assignment.
I used ChatGPT to help create the initial CSS layout and Claude to
review my HTML for accessibility and responsive-design improvements.
I reviewed, modified, and tested the generated code before submitting it.
```

The purpose of this requirement is **not to penalize AI use**. It is to
encourage transparent and responsible use of AI as a software
engineering tool.

------------------------------------------------------------------------

## 9. Submission Instructions

Submit the following to the **D2L dropbox**:

1.  **ZIP file**

    Place all project files in a folder named:

    ``` text
    AboutMe_LastName_FirstName
    ```

    Zip the folder as:

    ``` text
    AboutMe_LastName_FirstName.zip
    ```

2.  **GitHub Repository URL**

    Example:

    ``` text
    https://github.com/yourusername/AboutMe-LastName-FirstName
    ```

3.  **Vercel Deployment URL**

    Example:

    ``` text
    https://your-project-name.vercel.app
    ```

Before submitting, verify all three deliverables.

The instructor should be able to:

-   Download the ZIP and open `index.html` locally.
-   View your source code on GitHub.
-   Open your live application using the Vercel URL.

------------------------------------------------------------------------

## 10. Grading Rubric - 25 Points

  ------------------------------------------------------------------------
  Category              Description                                 Points
  --------------------- --------------------- ----------------------------
  Content Completeness  All required sections                           10
                        included              

  Technical Correctness `index.html` loads                               5
  & Deployment          correctly, links      
                        work, GitHub          
                        repository is         
                        accessible, and       
                        Vercel deployment     
                        works                 

  Design & Usability    Clean layout,                                    5
                        readability, and      
                        organization          

  Professional Quality  Writing quality,                                 3
                        clarity, and          
                        presentation          

  Packaging & Structure Proper                                           2
                        folder/repository     
                        structure and naming  

  **Total**                                                         **25**
  ------------------------------------------------------------------------

------------------------------------------------------------------------

## 11. Academic Integrity and Responsible AI Use

-   The final application you submit is your responsibility.
-   You may use online references, tutorials, templates, and generative
    AI tools.
-   You may use ChatGPT, Claude, GitHub Copilot, and similar tools to
    help complete the assignment.
-   Cite or acknowledge third-party libraries, templates, images, or
    other resources where appropriate.
-   Document your use of generative AI in the `README.md` as described
    above.
-   You should understand the major code and design decisions in your
    submission and be prepared to explain them.

------------------------------------------------------------------------

## 12. Evaluation Criteria - Instructor Notes

The instructor may also consider:

-   Code readability and organization
-   Appropriate use of web standards
-   Professional tone and presentation
-   Attention to detail
-   Successful GitHub publication
-   Successful Vercel deployment
-   Responsible and transparent use of AI tools

------------------------------------------------------------------------

## 13. Future Use

This assignment is the foundation for:

-   Your capstone portfolio
-   Resume and LinkedIn alignment
-   Future GitHub-based assignments
-   Future deployment and software delivery exercises

You are encouraged to continue improving this page throughout the
semester.

**Good luck, and treat this as your first professional deliverable in
ICS 499!**
