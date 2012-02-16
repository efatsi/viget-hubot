# bad about mongodb

module.exports = (robot) ->
  robot.hear 'harry potter taco', (msg) ->
    msg.send("http://awesomegifs.com/wp-content/uploads/psycho-potter-taco-fling.gif")
