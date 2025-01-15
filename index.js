const express = require('express');
const app = express();
const port = 3000;

// Endpoint "Hola Mundo"
app.get('/', (req, res) => {
  res.send('Hola Mundo desde QA!');
});

// Inicia el servidor
app.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});
