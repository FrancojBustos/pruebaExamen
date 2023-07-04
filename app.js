// Imports
const cors = require("cors");
const express = require("express");
const helmet = require("helmet");
const path = require("path");
const morgan = require("morgan");

const app = express();

require("dotenv").config();
const port = process.env.PORT || 3000;

// Middlewares
// TODO: Implementar middlewares
app.use(corse());
app.use(helmet());
app.use(morgan("dev"));
app.use(express.json());
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

// Routes
app.use(require("./routes/reserva.routes"));

// TODO: Si la petición no coincide con ninguna de las rutas declaradas, mostrar error 404
app.use((req, res, next) => {
  return res.status(404).render("404");
});
// Starting the server
app.listen(port, () => console.log(`server corriendo en el puerto ${port}`));
