express = require('express')
app = express()

delay = (ms, func) ->
  console.log 'delay'
  setTimeout func, ms

app.get '/', (req, res) ->
  res.send 'Hello World!'
  return

app.get '/listen', (req, res) ->
  console.log '>>>---JON--->>> you called the right method'
  res.write 'Message 1'
  delay 1000, ->
    res.write 'Message 2'
    delay 1000, ->
      res.write 'Message 3'
      delay 1000, ->
      res.write 'Message 4'
      setInterval (() -> res.write('Interval')), 500

app.listen 3000, ->
  console.log 'Example app listening on port 3000!'
  return


