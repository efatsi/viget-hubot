
# things

cool_stories = [
  'http://awesomegifs.com/wp-content/uploads/cool-story-bro1.gif',
  'http://awesomegifs.com/wp-content/uploads/cool-story-bro.gif'
]

deals = [
  'http://assets0.ordienetworks.com/images/GifGuide/DealWithIt/slothdealwithit.gif',
  'http://awesomegifs.com/wp-content/uploads/meryl-streep-deal-with-it.gif',
  'http://i0.kym-cdn.com/photos/images/original/000/245/274/851.gif',
  'http://assets0.ordienetworks.com/images/GifGuide/DealWithIt/30wphfo.jpg.gif',
  'http://assets0.ordienetworks.com/images/GifGuide/DealWithIt/dealwithitedwood.gif',
  'http://assets0.ordienetworks.com/images/GifGuide/DealWithIt/Terminator-deal-with-it.gif',
  'http://i3.kym-cdn.com/photos/images/original/000/087/367/dealwithtrollplz.gif'
]

module.exports = (robot) ->
  robot.hear 'mongodb', (msg) ->
    msg.send("mongodb == :poop: :toilet:")

  robot.hear 'tru dat', (msg) ->
    msg.send("http://images.cheezburger.com/completestore/2011/4/27/5c23ad70-732e-48f6-b114-1e054518f07e.jpg")

  robot.hear /cool\s+story,?\s*bro/i, (msg) ->
    msg.send(msg.random cool_stories)
    
  robot.hear /deal with it/i, (msg) ->
    msg.send(msg.random deals)
