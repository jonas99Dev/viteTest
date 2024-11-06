const express = require("express");
const cors = require("cors");
const dotenv = require("dotenv");

const app = express();

app.use(cors());

app.get("/", (req, res) => {
  res.send("Hello World!");
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`application running:${PORT}`);
});
