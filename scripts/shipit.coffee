# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_HAMSTERS
#
# Commands:
#   ship it - Display a motivation hamster
#
# Author:
#   maddox

hamsters = [
  "http://2.bp.blogspot.com/_-sO-MqC5Pd8/TAZSCdOcJtI/AAAAAAAAAck/xsh-ldSJgZg/s1600/may+2010+437.jpg",
  "http://www.photoshopcreative.co.uk/users/4998/thm1024/sailing_the_ocean_waves.jpg",
  "http://www.photographyblogger.net/wp-content/uploads/2013/04/10-cute-hamster.jpg",
  "http://j-walkblog.com/images/tinycutehamster.jpg",
  "http://www.hdwallpaperspics.com/wp-content/uploads/2012/11/Cute-Hamsters-02.jpg",
  "http://quantumconservative.com/wp-content/uploads/2009/12/hamster_golf-300x221.jpg",
  "http://www.furrytalk.com/wp-content/uploads/hamsters/2.jpg",
  "http://media-cache-ec0.pinimg.com/236x/3d/06/c6/3d06c6dacc91a154a12a86c55952c726.jpg",
  "http://www.lolset.com/wp-content/uploads/2012/03/Cute-Hamster-Eating-Cheez-It.jpg",
  "http://3.bp.blogspot.com/_G--sasIG8GY/TMMQ4PrF4PI/AAAAAAAAGOU/22sMDjW9e8w/s400/hamster2.jpg",
  "https://i.rmbl.ws/z3/5/9/K/e/a.baa-Two-cute-hamsters-eating.jpg",
  "http://photos1.blogger.com/blogger/3972/1848/320/worldpeace-hamster.jpg",
  "http://images.forwallpaper.com/files/images/2/2508/25088bf2/304999/litte-cute-hamster.jpg",
  "http://www.cute-baby-animals.org/wp-content/uploads/cute-baby-hamster-eating-spagetti.jpg"
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_HAMSTERS
    regex = /ship(ping|z|s|ped)?\s*it/i
  else
    regex = /sh(i|oo)p\s*it/i

  robot.hear regex, (msg) ->
    msg.send msg.random hamsters
