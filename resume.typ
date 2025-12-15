#set page(
  paper: "us-letter",
  margin: (x: 0.5in, y: 0.4in), 
)
#set text(
  font: "Linux Libertine",
  size: 9.5pt, 
  lang: "en"
)
#set par(leading: 0.5em) 

// --- Helper Functions ---

#let section-header(title) = {
  v(5pt) 
  text(weight: "bold", size: 10.5pt, upper(title))
  v(-6pt)
  line(length: 100%, stroke: 0.5pt)
  v(2pt)
}

#let resume-item(
  title: "",
  subtitle: "",
  date: "",
  location: "",
  content: none
) = {
  v(2pt) 
  grid(
    columns: (1fr, auto),
    row-gutter: 0.5em,
    text(weight: "bold", title), align(right, date),
    text(style: "italic", subtitle), align(right, text(style: "italic", location))
  )
  if content != none {
    pad(left: 0.5em, top: 0.1em, bottom: 0.1em, content) 
  }
}

// --- Header ---

#align(center)[
  #text(size: 18pt, weight: "bold")[JOSHUA WISE] \
  1174 Superior Court, Sidney, Ohio 45365 | (937)-622-0063 \
  #link("mailto:wise.113@wright.edu")[wise.113\@wright.edu] | #link("https://linkedin.com/in/joshua-wise-970294293")[linkedin.com/in/joshua-wise-970294293] | #link("https://github.com/Joshua-Wise78")[github.com/Joshua-Wise78]
]

// --- Education ---

#section-header("Education")

#resume-item(
  title: "Wright State University",
  subtitle: "Bachelor of Science in Computer Science",
  date: "Sep 2023 - Dec 2026",
  location: "Fairborn, Ohio",
  content: [
    *Relevant Coursework:* Mobile Development, Intro to Cyber Security, Data Structures, OS Internals, Java I-II, Special Topics.
  ]
)

// --- Experience ---

#section-header("Experience")

#resume-item(
  title: "Teaching Assistant",
  subtitle: "Java III Lab Leader",
  date: "Aug 2024 - Present",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - Lead a lab of 50 students, teaching core concepts of Object Oriented Programming.
    - Utilize Visual Studio Code, IntelliJ, and Git to manage workflows and display in-class code to students.
    - Collaborate with three other lab assistants to solve in-class problems, delegate grading, and schedule due dates.
  ]
)

#resume-item(
  title: "Air Force Research Laboratory (AFRL)",
  subtitle: "Year-round Intern | Full-stack/Data Analysis",
  date: "May 2024 - Aug 2025",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - *March 2024 - April 2025:* Developed an internship portal using Flask for backend management (authentication, redirects) and HTML/CSS/JS for frontend. Migrated Google Datastore to Firestore for consistency.
    - *April 2025 - October 2025:* Managed internal AFRL information for customer satisfaction; developed SharePoint models to display costs/usage.
    - Utilized VS Code, Python, HTML/CSS/JS, Firebase, Datastore, Power BI, and DAX queries.
  ]
)

// --- Projects ---

#section-header("Projects")

#resume-item(
  title: "The Hive",
  subtitle: "HTML, CSS, JS, Next.js, Tailwind, MongooseDB, Node.js",
  date: "March 2022",
  location: "",
  content: [
    #set list(marker: [•])
    - Collaboratively developed a social media application for high school use.
    - Used HTML/CSS/JS within Next.js; implemented Tailwind CSS for compact files.
    - Utilized MongooseDB for database organization, storing user information with encryption.
  ]
)

#resume-item(
  title: "Discord Bot",
  subtitle: "JavaScript, VS Code, GitHub",
  date: "Aug 2025 - Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Custom Discord bot made in JavaScript to organize and run my personal home server.
    - Used Discord.js to develop commands to store, retrieve and manage NAS storage.
  ]
)

#resume-item(
  title: "Personal Portfolio",
  subtitle: "HTML, CSS, JavaScript, VS Code, GitHub",
  date: "Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Developed a custom portfolio website to display creative skills, projects, and coursework.
  ]
)

// --- Skills ---

#section-header("Technical Skills")

#pad(top: 0.2em)[
  *Languages & Tools:* HTML/CSS, Flask, C/C++, Firebase, Java, Power BI, DAX, Python, Git/GitHub, Vim, JavaScript, Next.js
]

// --- Soft Skills ---

#pad(top: 0.2em)[
  *Soft Skills:* Leadership, Collaboration, Team Management, Public Speaking, Problem-Solving, Project Management, Delegation
]

// --- Extracurricular ---

#section-header("Extracurricular Leadership")

#pad(top: 0.2em)[
  #set list(marker: [•])
  - *ACM Programming Contest:* 2023 contestant and 2024 Judge.
  - *eSports Officer (Secretary, 2023-2024):* Managed schedules for cabinet meetings and club room; tracked member count.
  - *eSports Team Captain:* Led a team of five individuals; developed strategies and led during difficult situations.
]