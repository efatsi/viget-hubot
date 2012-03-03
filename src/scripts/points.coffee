# Assign points to houses
#
# 5 points to <house>
# 10 points from <house>
# who gets the hous cup

module.exports = (robot) ->

  getAmbiguousUserText = (users) ->
    "Be more specific, I know #{users.length} people named like that: #{(user.name for user in users).join(", ")}"

  robot.hear /^\d points .*?\b .*?\b, (msg) ->
    points = msg.match[1]
    direction = msg.match[2]
    house = msg.match[3].trim()
    msg.send points
    msg.send direction
    msg.send house

