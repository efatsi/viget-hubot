
# things

module.exports = (robot) ->
  robot.hear 'mongodb', (msg) ->
    msg.send("mongodb == :poop: :toilet:")

  robot.hear 'tru dat', (msg) ->
    msg.send("http://images.cheezburger.com/completestore/2011/4/27/5c23ad70-732e-48f6-b114-1e054518f07e.jpg")

  robot.hear /cool\s+story,?\s*bro/, (msg) ->
    msg.send('http://awesomegifs.com/wp-content/uploads/cool-story-bro.gif')