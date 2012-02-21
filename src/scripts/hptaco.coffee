# harry potter taco - when typed anywhere (with or without hubot) displays the best animated gif evar

module.exports = (robot) ->
  robot.hear 'harry potter taco', (msg) ->
    msg.send("http://awesomegifs.com/wp-content/uploads/psycho-potter-taco-fling.gif")
