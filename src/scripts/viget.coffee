
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
  'http://i3.kym-cdn.com/photos/images/original/000/087/367/dealwithtrollplz.gif',
  'http://chzmemebase.files.wordpress.com/2012/05/internet-memes-interview-nope.gif'
]

argument_invalids = [
  'http://i0.kym-cdn.com/photos/images/newsfeed/000/061/297/nickcage.jpeg',
  'http://i2.kym-cdn.com/photos/images/original/000/275/226/134.gif',
  'http://i2.kym-cdn.com/photos/images/newsfeed/000/272/859/7b2.jpg',
  'http://i3.kym-cdn.com/photos/images/newsfeed/000/239/222/18c.jpg',
  'http://i2.kym-cdn.com/photos/images/newsfeed/000/218/392/YoYoMaWombat.jpg',
  'http://i2.kym-cdn.com/photos/images/newsfeed/000/182/858/5VSYk6VE5kl18w4o1b2ssv5Xo1_400.jpg',
  'http://i2.kym-cdn.com/photos/images/newsfeed/000/111/969/i-am-ironing-a-kitten-your-argument-is-invalid.jpg',
  'http://i0.kym-cdn.com/photos/images/newsfeed/000/101/117/tumblr_lgzjoo6nDV1qc3wjlo1_500.jpg',
  'http://i1.kym-cdn.com/photos/images/newsfeed/000/052/091/tumblr_kwyocwJScg1qausevo1_400_1_.jpg',
  'http://i1.kym-cdn.com/photos/images/newsfeed/000/030/331/batman-ride-elephant-argument_invalid.jpg',
  'http://i2.kym-cdn.com/photos/images/original/000/023/033/OlamOANOCl3x570axH2woWFDo1_400.jpg',
  'http://i1.kym-cdn.com/photos/images/newsfeed/000/007/510/robocop_is_riding_a_unicorn.jpg',
  'http://i2.kym-cdn.com/photos/images/newsfeed/000/007/498/this_room_belongs_to_an_octopus.jpg',
  'http://i0.kym-cdn.com/photos/images/newsfeed/000/002/763/invalid.jpg'
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

  robot.hear /(^|[\s,"':;!?\(\.])(dancing|dance|zebra)([\s\.\(\),"'!?:;]|$)/i, (msg) ->
    msg.send('http://i.imgur.com/Npizs.gif')

  robot.hear /(mind('?s)?(\.?\s|( (has )?been ))blown)|(blow(ing|n)?\.? my\.? mind)|(mind\.? blowing)/i, (msg) ->
    msg.send('http://i100.photobucket.com/albums/m17/wayman_lee/mind_blown.gif')

  # Inspired by Fosome
  robot.hear /^\s*(thinking|1\s*sec|one\s*sec)\s*$/, (msg) ->
    msg.send('https://www.loopt.com/images/spinner.gif')

  robot.hear /argument is invalid/i, (msg) ->
    msg.send(msg.random argument_invalids)

  robot.hear /ok[,\s]+pal/i, (msg) ->
    msg.send('http://gasgrills-onsale.net/wp-content/uploads/2011/08/transparent.gif')