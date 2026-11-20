# IEM 4723 Information Systems Design and Development

## Final Project Presentation and Report, Fall 2026

As stated in the project proposal guidelines, the required components of the system you develop must include code management and containerization, database management, and an interactive Streamlit dashboard. Everything is submitted through the team's GitHub repository, the same repository whose URL was given in the proposal.

---

## Milestone 3: Project Presentation

Presentations are scheduled for Tuesday December 1st and Thursday December 3rd. The presentation schedule has been posted on Canvas, please plan accordingly. Each team has **15 minutes**, which includes the demo. Plan for roughly 11 minutes of presentation, 3 minutes of demo, and 1 minute of questions. You will be stopped at 15 minutes. Ideally, it is **strongly** encouraged that team members split the presentation time among all members. 

### Required content

Cover these in the order given. One or two slides each is enough.

1. **Title slide.** Project title, category, team members, and the GitHub URL.
2. **Problem statement.** The real-world problem, who the stakeholders are, and what the system does for them.
3. **System architecture.** One diagram showing the services and how they communicate. Name the containers, the ports, and which service talks to which.
4. **Database design.** If you are using MySQL, state the normal form you reached and justify any denormalization. If you used a NoSQL store, state what it holds and why that data does not belong in the relational store. 
5. **Containerization.** The services in your compose file, the volumes, and the network. State where your images are hosted, on Docker Hub or GHCR.
6. **Dashboard demo.** Live, in the browser. See below.
7. **What changed since the proposal.** What you added, what you dropped, and why.
8. **Individual contributions.** Who did what, with reference to the commit history.

### The demo

The demo is the largest single component of the presentation grade. It must be **live and interactive**. 

- Start from containers you brought up before class. Do not spend presentation time waiting for images to pull.
- Show at least three interactions that change what is on the page. Changing a filter and having the charts and metrics respond is the minimum.
- Answer at least one question that requires the database rather than a precomputed file.
- **Have a recorded fallback.** If the live demo fails, play your recording and keep going. A failed demo with no fallback loses the full demo mark. 
- **You do not have to submit the video recording**.

---

## Milestone 4: Final Project Report

The report is a `report.pdf` committed to the root of the team repository, together with the source code and supporting material. There is no page limit, but make sure you cover these sections.

### Required sections

1. **Title, team, and repository URL.**
2. **Problem statement and stakeholders.** Updated from the proposal if the scope changed.
3. **System architecture.** The same diagram used in the presentation, with a paragraph explaining the flow of a single user request through the system.
4. **Database design. (represented as charts)**
   - The relational schema, with primary and foreign keys marked.
   - The normal form reached, and justification for any design choice that departs from it.
   - The NoSQL component, if used, and why that data lives there.
5. **Containerization.** The services, images, ports, volumes and network. State which registry hosts your images.
6. **Dashboard.** What questions it answers, and which chart type answers each one and why. This is where the material from Lectures 14 through 18 is applied.
7. **Data.** Source, volume, and attribution. **No credit is given for data whose source is not stated.**
8. **System capabilities.** What the finished system does, stated concretely with measured numbers where possible.
9. **Scope for improvement.** What you would build next, and what you would do differently.
10. **Individual contributions.** A table of team members against the work they did, with commit counts or ranges. **You must plot commits on a bar graph by team member when you submit your report**.

---

## Reproducibility

The project is graded by cloning your repository on a machine that has never run it and following your README. This is what "self-contained and replicable independently" means in the proposal.

Your repository must satisfy all of the following.

- `git clone`, then a single documented command, brings the system up. `docker compose up -d` is the expected command.
- The README states the command, the URL to open, and any credentials.
- The data is either committed, or downloaded and loaded by a script in the repository. A dataset that a grader has to find and place by hand does not count as reproducible.
- The database is populated by a documented step, whether a seed script or a button in the dashboard.
- No absolute paths from your own machine, and no hard-coded credentials that only work on your machine.

A system that cannot be started from a clean clone loses the reproducibility marks regardless of how well it ran in the demo.

---

## Grading

The project is 35% of the course grade. This document covers two of its four components, as set out in `project_guidelines.md`.

### Presentation, 30% of the project grade

| Component                                                       | Points |
|-----------------------------------------------------------------|---|
| Problem statement and stakeholders                              | 4 |
| System architecture, clearly explained                          | 5 |
| Database design, including entity definitions and normalization | 6 |
| Containerization                                                | 4 |
| Live dashboard demo                                             | 8 |
| Changes since the proposal, and scope for improvement           | 3 |
| **Total**                                                       | **30** |

Marks are deducted for running over time, for a demo that is not live without a stated reason, and for team members who do not present.

### Report and final submission, 20% of the project grade

| Component | Points |
|---|---|
| Required sections present and complete | 5 |
| Database documentation: entity definitions, schema, justification | 4 |
| Containerization and reproducibility from a clean clone | 4 |
| Dashboard documentation, including chart choices | 3 |
| Professionalism and completeness of the report | 4 |
| **Total** | **20** |


### Bonus

The optional advanced component from the proposal, such as an AI agent or an LLM-driven feature built on the material from Lectures 21 through 24, is worth up to 5 bonus points on the project grade. It is marked on whether it works and whether it answers a question the dashboard could not, not on how much of it there is.

---

## Submission checklist

Before the presentation:

- [ ] Containers running and tested on the machine you will present from
- [ ] Recorded fallback video ready to play
- [ ] Slides committed to the repository

Before the report deadline:

- [ ] `report.pdf` in the repository root
- [ ] README with the clone-to-running instructions
- [ ] `docker-compose.yml` and all Dockerfiles committed
- [ ] Data committed, or a loader script that fetches it
- [ ] Repository cloned to a fresh directory and started from scratch, to confirm it works
