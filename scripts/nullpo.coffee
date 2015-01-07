# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ぬるぽ - ｶﾞｯ
#
# Author:
#   @ntddk

module.exports = (robot) ->
  robot.respond /(ぬるぽ|nullpo)/, (msg) ->
    msg.send """

   Λ＿Λ    ＼＼
  （ ・∀・）   | | ｶﾞｯ
 と       ）   | |
   Ｙ /ノ     人
    / ）     <  >  _Λ∩
 ＿/し' ／／  Ｖ｀Д´）/
 （＿フ彡            / ←>> @#{msg.message.user.name}
"""