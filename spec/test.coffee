request           = require('supertest')
assert = require 'assert'
BASE_URL = 'localhost:3000'
http = require('http')

describe 'Long Polling', () ->

  before (done) ->
    done()

  after (done) ->
    done()

  it 'will allow you to connect to the server locally', (done) ->
    options = {
      host: 'localhost',
      path: '/',
      port: '3000',
      method: 'GET'
    }

    callback = (response) ->
      str = ''
      response.on 'data', (chunk) ->
        console.log('Chunk', chunk)
        str += chunk
      response.on 'end', () ->
        console.log(str)
    
    http.request(options, @callback).end()

  it 'will allow you to recieve data on a long polling connection', (done) ->
    