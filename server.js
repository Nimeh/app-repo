const express = require("express");
const os = require("os");

const app = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  res.send(`Hello from ${os.hostname()}!`);
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

