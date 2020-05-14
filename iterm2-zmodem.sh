#!/usr/bin/env zsh
# zsh <(curl -sSL https://github.com/Junyangz/iterm2-zmodem/raw/master/iterm2-zmodem.sh)
# scirpt from https://gist.github.com/zthxxx/9171c12538605d92781b74274ba8b9e1
brew install lrzsz

recv='/usr/local/bin/iterm2-recv-zmodem.sh'
send='/usr/local/bin/iterm2-send-zmodem.sh'

curl -sSL https://github.com/Junyangz/iterm2-zmodem/raw/master/iterm2-recv-zmodem.sh -o "$recv"
curl -sSL https://github.com/Junyangz/iterm2-zmodem/raw/master/iterm2-send-zmodem.sh -o "$send"

chmod +x "$recv" "$send"