const express = require("express");
const cors = require("cors");
const app = express();
const pool = require("./db");

// MIDDLEWARE
app.use(cors());
app.use(express.json());

// ROUTES

// create todo
app.post("/todos", async (req, res) => {
  try {
    const { description } = req.body;
    const newTodo = await pool.query(
      "INSERT INTO todo (description) VALUES ($1) RETURNING *",
      [description]
    );
    res.json(newTodo);
  } catch (err) {
    console.error(err.message);
  }
});

// get all todos

// get a todo

// update a todo

// delete a todo

app.use((req, res) => {
  const msg = `Page not found: ${req.url}`;
  console.warn(msg);
  res.status(404).send(msg);
});

app.listen(5000, () => {
  console.log("server has started on port 5000");
});
