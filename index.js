const config = require('./config');
const express = require('express');
const app = express();
const usersRouter = require('./routes/users');
const booksRouter = require('./routes/books');

app.use(express.json());
app.use(express.urlencoded({ extended: true, }));


app.get("/", (req, res) => {
    res.json({ message: "ok" });
});

/* Routing */
app.use('/users', usersRouter);
app.use('/books', booksRouter);

/* Error handler middleware */
app.use((err, req, res, next) => {
    const statusCode = err.statusCode || 500;
    console.error(err.message, err.stack);
    res.status(statusCode).json({ message: err.message });
    return;
});


app.listen(config.serverPort, (req, res) => {
    console.log(`Express API is running at port ${config.serverPort}`);
});