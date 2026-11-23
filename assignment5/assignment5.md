# IEM 4723 Information Systems Design

## Assignment 5: An AI Agent over MySQL and Redis (Optional)

---

### Overview

This assignment is **optional**. It combines the dashboard from Lecture 18 with the MCP agent from Lecture 19. The Lecture 19 server reads CSV files. You will replace those tools with tools that read from MySQL and Redis, so that the model answers questions and draws charts from the live database.

There is no single correct answer here. Which tools you expose, and which questions your app can answer, are your design decisions.

### Before You Begin

1. Copy `docker_tutorial/ai-dev/lecture19/` to a folder of your own and work in it.
2. Add the `mysql` and `redis` services from `docker_tutorial/streamlit-dev/lecture18/docker-compose.yml` to your own compose file, along with `seed.py`. Your stack should bring up MySQL, Redis, the MCP server and the Streamlit app together.
3. Use the `ghcr.io/disys-lab/streamlit-ai-base` image. It already has the MCP SDK and the LLM client installed.
4. The endpoint, key and model go in the sidebar, as in Lecture 19. Do not commit your key. This is super important!
5. Yu would only need to rely on the warehouse data you have used all semester for all tutorials and assignment.

---

### Question 1: Tools over MySQL [30 points]

1. In `mcp-server/server.py`, replace the CSV tools with tools that query MySQL.
2. Expose **at least three tools**. At least one must run a `GROUP BY` in SQL rather than counting rows in Python.
3. Each tool must return rows, not a picture. The app draws the chart.
4. Open the connection, query, and close it inside each tool, as in Lecture 18.
5. Write the docstring of each tool so the model can tell from it when to call that tool and what to pass. This is the part that decides whether the agent works.
6. List your tools and what each one does in your `README.md`.

### Question 2: Tools over Redis [25 points]

1. Add at least one tool that reads from Redis.
2. Restrict yourself to the commands covered in Lectures 11 and 12.
3. The question your Redis tool answers must be one that suits Redis. State in your `README.md` why you sent it to Redis rather than MySQL.
4. Seed whatever keys your tool needs from `seed.py`.

### Question 3: Charts Driven by the Model [25 points]

1. The model chooses the chart. Your app draws it with the Streamlit chart calls from Lectures 16 to 18.
2. Support **at least two chart types**, and have the tool result say which one to use.
3. Print the tool call the model made above the chart, so the reader can see what was asked for.
4. Ask your app five questions. Record each question, the tool call it produced, and the chart it drew, in your `README.md`.
5. Include one question the model got **wrong** — a wrong tool, a wrong column, or an invented number. Say what happened and why.

### Question 4: An Extension of Your Own [20 points]

Add one thing that is not in Lecture 19. Marks are for whether it works and whether it answers a question the Lecture 19 app could not. Some directions, none of them required:

- A tool that joins two tables and answers a question neither table can answer alone.
- A tool that writes to the database, with a guard so the model cannot delete anything.
- A second MCP server in its own container, so the client discovers tools from both.
- A tool that compares a figure from MySQL against the same figure from Redis and reports any disagreement.
- Caching in the MCP server, with a measurement showing what it saved.

Describe what you built and why in your `README.md`.

---

### Deliverables

Submit the following through Canvas. Do not submit your work to the course GitHub repository.

1. Your project folder, with `app/`, `mcp-server/` and the `docker-compose.yml` you used.
2. A `README.md` containing:
   a. The command you ran to start the stack.
   b. A table of your tools, with what each one returns.
   c. The five questions from Question 3, with the tool call and chart for each.
   d. The failed question from Question 3, with your explanation.
   e. Your reasoning for the Redis tool from Question 2.
   f. A description of your extension from Question 4.
3. Three screenshots: the chat with a tool call visible, the chart it produced, and `docker compose ps` showing all four services running.

