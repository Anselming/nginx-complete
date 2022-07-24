const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  res.send('Thiago Anselme!')
})

app.get('/contato', (req, res) => {
    res.send('<H1>Contato</H1><P>Meu contato é <a href=\'mailto:thiago@anselme.com.br\'>Thiago Anselme</a></P>')
  })

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})