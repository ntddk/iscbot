# Description:
#   What about progress?
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   HUBOT_TUMBLR_API_KEY - A Tumblr OAuth Consumer Key will work fine
#
# Commands:
#   進捗
#
# Author:
#   @ntddk

tumblr = require 'tumblrbot'
SHINCHOKU = "shinchokudodesuka.tumblr.com"

module.exports = (robot) ->
  robot.respond /進捗/i, (msg) ->
    tumblr.photos(SHINCHOKU).random (post) ->
      if typeof msg.match[1] is "string"
        user = robot.brain.userForName(msg.match[1])
        if user is undefined
          msg.send "進捗ダメです #{msg.match[1]}"
        else
          msg.send "@#{user.name} #{post.photos[0].original_size.url}"
      else
        msg.send post.photos[0].original_size.url