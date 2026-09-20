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
  v(5pt)
  text(weight: "bold", size: 11pt, upper(title))
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
  let left-content = text(weight: "bold", title)
  if subtitle != "" {
    left-content = left-content + " | " + text(style: "italic", weight: "regular", subtitle)
  }

  let right-content = []
  if location != "" {
    right-content = text(style: "italic", location) + " | "
  }
  right-content = right-content + date

  grid(
    columns: (1fr, auto),
    gutter: 0.5em,
    left-content, align(right, right-content)
  )
  
  if content != none {
    pad(left: 0em, top: 0em, bottom: 0.2em, content)
  }
}

// --- Header ---

#align(center)[
  #text(size: 20pt, weight: "bold")[JOSHUA WISE] \
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
    *Relevant Coursework:* Data Structures, OS Internals, Cyber Security, Special Topics.
  ]
)

// --- Skills ---

#section-header("Technical Skills")

#pad(top: 0em)[
  *Languages:* Python, Java, C/C++, Typescript, HTML/CSS, SQL, \
  *Frameworks & Tools:* React, Next.js, Flask, FastAPI, Git, Docker, Postgres, MariaDB, Vim, Power BI
]

// --- Experience ---


#section-header("Experience")

#resume-item(
  title: "Tenet3 LLC",
  subtitle: "Solutions Intern",
  date: "March 2026 - Present",
  location: "Dayton, Ohio",
  content: [
    #set list(marker: [•])
    - Programmatically build unique, tailored models to deliver customized solutions and individualized experiences per customer.
    - Manipulate and transform complex datasets, representing data in actionable and client-specific ways.
    - Collaborate within an agile workflow, actively participating in pull requests and code reviews.
  ]
)

#resume-item(
  title: "Wright State University",
  subtitle: "Raider Immersion Intern",
  date: "Dec 2025 - May 2026",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - Supporting WSU Take Flight Academy building out training flight software.
    - Supporting Booz Allen's *parametric missile modeling* and simulation team to develop and analyze dynamic and kinematic models of missiles and aircraft systems.
    - Developing a user-friendly workflow and graphical interface that integrates with an open-source software API to verify program input and validate program output.
    - Collaborating with a *multidisciplinary team* to ensure completion of delegated milestones, participating in standups to report progress and perform technical reviews.
  ]
)

#resume-item(
  title: "Air Force Research Laboratory (AFRL)",
  subtitle: "Year-round Intern | Full-stack & Data Analysis",
  date: "Mar 2024 - April 2025",
  location: "Fairborn, Ohio",
  content: [
    #set list(marker: [•])
    - Built a *full-stack* internship portal using Flask, HTML/JS, and Firebase; migrated data from Datastore to Firestore.
    - Managed internal datasets and developed Power BI dashboards with DAX to visualize operational costs and usage.
    - Automated data workflows to improve customer satisfaction and information accessibility.
  ]
)

// --- Projects ---

#section-header("Projects")

#resume-item(
  title: "Route 88",
  subtitle: "Typescript, Flutter, Dart, ORSM, Docker, Postgres",
  date: "December 2025 - Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Multi-service application based on a microservice architecutre.
    - Managed Git version control, *conflict resolution*, and feature integrations.
    - Team lead of 3 other students working on the *flutter* application using the microservice built.
  ]
)

#resume-item(
  title: "The Men",
  subtitle: "Python, Discord.py, Tailscale",
  date: "Aug 2025 - Present",
  location: "",
  content: [
    #set list(marker: [•])
    - Created a suite of Discord bots to *automate* home server media queries and management.
    - Enabled secure remote management of Immich, and Jellyfin services via Tailscale.
  ]
)

// --- Extracurricular Leadership ---

#section-header("Extracurricular Leadership")

#pad(top: 0em)[
  #set list(marker: [•])
  - *Lead Teaching Assistant* Worked as a teaching assistant for Java I & II leading labs for 3 semesters.
  - *Wright State eSports:* Served as *Secretary* (2023-24) managing club logistics, and *Team Captain*, leading strategy for a 5-person competitive team.
  - *Hackathon Participant:* Built a self-hosted software called *Box-Notes* to self-host and render markdown notes.
]
