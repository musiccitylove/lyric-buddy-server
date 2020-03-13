require('dotenv').config()
const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const helmet = require('helmet')
const { NODE_ENV } = require('./config')
const songsRouter = require('./songs/songs-router')


const app = express()

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(morgan(morganOption))
app.use(helmet())
app.use(cors())

app.use('/songs', songsRouter)


app.get('/', (req, res) => {
  res.send('Hello, world!')
})

// app.get('/songs', (req, res) => {
//   res.send('We have juicy cheese burgers!');
// })

 app.use(function errorHandler(error, req, res, next) {
  let response
    if (NODE_ENV === 'production') {
     response = { error: { message: 'server error' } }
   } else {
     console.error(error)
    response = { message: error.message, error }
   }
   res.status(500).json(response)
 })

module.exports = app