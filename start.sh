export HUBOT_IRC_ROOMS="#nzedb"
export HUBOT_IRC_SERVER="irc.synirc.net"

cd /opt/hubot
npm install
/opt/hubot/bin/hubot --adapter irc --name octobot
