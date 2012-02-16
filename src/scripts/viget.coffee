
# talks bad about mongodb

module.exports = (robot) ->
  robot.hear 'mongodb', (msg) ->
    msg.send("mongodb == :rocket: :rainbow:")
