# Assign points to houses
#
# 5 points (to|for) <house>
# 10 points from <house>
# who gets the house cup
# forget <house> house
# check <house> house

module.exports = (robot) ->

  robot.hear /^[0-9]+ (points|point) [a-zA-Z]+ .*?$/i, (msg) ->
    robot.houses or= {}
    command = parseCommand(msg)
    msg.send "#{command.points} point #{command.action} #{command.house} house."
    points = if command.add_to then command.points else command.points * -1
    adjustPoints(command.house, points)

  robot.hear /who gets the house cup/i, (msg) ->
    name = 'No one'
    points = 0
    tally = []
    for key, value of robot.houses
      tally.push(" - #{key}: #{value}")
      if value > parseInt(points)
        name = key
        points = value
    points = if name == 'No one' then 'any' else points
    msg.send "#{name} gets the House Cup! #{name} has #{points} " + getPointNoun(points) + "."
    delay 2500, -> msg.send(score) for score in tally

  robot.hear /^check [a-zA-Z\s].*? house/i, (msg) ->
    robot.houses or= {}
    name = getHouseName(msg.match[0], 1)
    name = name.split(' ').slice(0, -1).join(' ')
    if robot.houses[name] 
      msg.send "#{name} has #{robot.houses[name]} " + getPointNoun(robot.houses[name]) + "."
    else 
      msg.send "I don't think that's actually a house."

  robot.hear /^forget [a-zA-Z\s].*? house/i, (msg) ->
    robot.houses or= {}
    name = getHouseName(msg.match[0], 1)
    name = name.split(' ').slice(0, -1).join(' ')
    if robot.houses[name] 
      delete robot.houses[name]
      msg.send "#{name} who? I've already forgotten about them."
    else 
      msg.send "I don't think that's actually a house."

  parseCommand = (msg)->
    command_matches = msg.match[0].split ' '
    command = {
      points : parseInt(command_matches[0], 10),
      add_to : command_matches[2] != 'from'
      house : getHouseName(msg.match[0], 3)
    }
    command.action = if command.add_to then 'awarded to' else 'deducted from'
    command

  adjustPoints = (name, points)->
    robot.houses or= {}
    robot.houses[name] or=0
    robot.houses[name] = robot.houses[name] + points

  getHouseName = (string, startPoint)->
    name = ''
    array = string.split(' ').slice(startPoint)
    max = array.length - 1
    for name_section, i in array
      name += removePunctuation(name_section)
      if i != max 
        name += ' '
    toTitleCase(name)

  getPointNoun = (points)->
    if points == 1 then 'point' else 'points'

  removePunctuation = (str)->
    str.replace(/[\.,-\/#!$%\^&\*;:{}=\-_`~()]/g, "")

  toTitleCase = (str)->
    str.replace(/\w\S*/g, titleCaseWord)

  titleCaseWord = (str)->
    return str.charAt(0).toUpperCase() + str.substr(1).toLowerCase()

  delay = (ms, func) -> setTimeout func, ms
