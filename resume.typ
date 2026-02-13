#set page(
  paper: "us-letter",
  margin: (x: 0.5in, y: 0.4in),
)
#set text(
  font: "Linux Libertine",
  size: 10pt,
  lang: "en"
)
#set par(leading: 0.45em)

// --- Helper Functions ---

#let section-header(title) = {
  v(6pt)
  text(weight: "bold", size: 10pt, upper(title))
  v(-5pt)
  line(length: 100%, stroke: 0.5pt)
  v(3pt)
}

#let resume-item(
  title: "",
  subtitle: "",
  date: "",
  location: "",
  content: none
) = {
  // Grid layout for the header line of each item
  grid(
    columns: (1fr, auto),
    row-gutter: 0em,
    text(weight: "bold", title), align(right, date),
    text(style: "italic", subtitle), align(right, text(style: "italic", location))
  )
  if content != none {
    pad(left: 0em, top: 0.2em, bottom: 0.2em, content)
  }
}

// --- Header ---

#align(center)[
  #text(size: 16pt, weight: "bold")[JOSHUA WISE] \
  Sidney, Ohio | (937)-622-0063 | #link("mailto:wise.113@wright.edu")[wise.113\@wright.edu] \
  #link("https://linkedin.com/in/joshua-wise-970294293")[linkedin.com/in/joshua-wise] | #link("https://github.com/Joshua-Wise78")[github.com/Joshua-Wise78]
]

// --- Education ---

#section-header("Education")

#resume-item(
  title: "Wright State University",
  subtitle: "B.S. in Computer Science",
  date: "Expected Dec 2026",
  location: "Fairborn, Ohio",
  content: [
    *Relevant Coursework:* Data Structures, OS Internals, Cyber Security
  ]
)

// --- Skills ---

#section-header("Technical Skills")

#pad(top: 0em)[
  *Languages:* Python, Java, C/C++, JavaScript, HTML/CSS, SQL, Bash \
  *Frameworks & Tools:* React, Next.js, Flask, FastAPI, Git, Docker, Postgres, MariaDB, Firebase, Vim, Power BI, MPI
]

// --- Experience ---

#section-header("Experience")

#resume-item(
  title: "Raider Immersion Program - Booz Allen Hamilton",
  subtitle: "Year-round Intern",
  date: "Dec 2025 - Present",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - Collaborating with aerospace engineers to develop software solutions for modeling aerospace components.
    - Leveraging Python and OpenVSP to build, optimize, and maintain simulation applications.
  ]
)

#resume-item(
  title: "Air Force Research Laboratory (AFRL)",
  subtitle: "Year-round Intern | Full-stack & Data Analysis",
  date: "Mar 2024 - Oct 2025",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - Built a full-stack internship portal using Flask, HTML/JS, and Firebase; migrated data from Datastore to Firestore.
    - Managed internal datasets and developed Power BI dashboards with DAX to visualize operational costs and usage.
    - Automated data workflows to improve customer satisfaction and information accessibility.
  ]
)

#resume-item(
  title: "Wright State University",
  subtitle: "Teaching Assistant & Java III Lab Leader",
  date: "Aug 2024 - Present",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - Leading a 50-student lab on Object-Oriented Programming; coordinating grading and deadlines with staff.
    - Demonstrating live coding workflows using Git and IntelliJ to enhance student understanding of development environments.
  ]
)

// --- Projects ---

#section-header("Projects")

#resume-item(
  title: "Box-Notes",
  subtitle: "React, Tailwind, Python, FastAPI, Postgres",
  date: "Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Developed a responsive personal note-taking application using React and Tailwind CSS.
    - Implemented a high-performance backend with FastAPI and Postgres for efficient data storage.
  ]
)



#resume-item(
  title: "Cooking App",
  subtitle: "Next.js, FastAPI, MariaDB",
  date: "Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Led a 4-person team to ship a full-stack culinary app; architected the Next.js frontend and FastAPI backend.
    - Managed Git version control, conflict resolution, and feature integration for the team.
  ]
)

#resume-item(
  title: "WiseBot",
  subtitle: "Python, Discord.py, Tailscale",
  date: "Aug 2025 - Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Created a Discord bot to automate home server media queries and management.
    - Enabled secure remote management of Immich, Nginx-Paperless, and Jellyfin services via Tailscale.
  ]
)

// --- Extracurricular Leadership ---

#section-header("Extracurricular Leadership")

#pad(top: 0em)[
  #set list(marker: [•])
  - *eSports Officer (Secretary):* Managed cabinet schedules and tracked club membership growth (2023-2024).
]
