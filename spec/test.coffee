request           = require('supertest')
assert = require 'assert'

describe 'Long Polling', () ->

  before (done) ->
    done()

  after (done) ->
    done()

  it 'will allow you to recieve data on a long polling connection', (done) ->
    request(REST_V2_BASE_URL)
      .get("/presence/user/jane.doe@gmail.com")
      .set('Authorization', BaseSpec.USER_AUTH)
      .expect(404)
      .end (err, res) ->
        return done(err) if err
        done()