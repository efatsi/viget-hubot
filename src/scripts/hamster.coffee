# git force push hamster - hamster fun

module.exports = (robot) ->
  robot.hear 'git force push hamster', (msg) ->
    msg.send("http://icanhascheezburger.files.wordpress.com/2008/01/funny-pictures-hamster-toilet-paper-roll.jpg")
