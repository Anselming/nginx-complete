const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  res.send('Olá Thiago Anselme!')
})

app.get('/Contato', (req, res) => {
    res.send('<h1>Contato</h1><p>Meu contato é <a href=\'mailto://thiago@anselme.com.br\'>Thiago Anselme</a></p>')
  })

app.listen(port, () => {
  console.log(`Ouvindo na porta: ${port}`)
})