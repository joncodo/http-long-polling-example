http = require('http')

options = {
  host: 'localhost'
  path: '/listen'
  port: '3000'
}

callback = (response) ->
  str = ''
  #another chunk of data has been recieved, so append it to `str`
  response.on 'data', (chunk) ->
    console.log 'Chunk', chunk
    str += chunk
    return
  #the whole response has been recieved, so we just print it out here
  response.on 'end', ->
    console.log str
    return
  return

http.request(options, callback).end()