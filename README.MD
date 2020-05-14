# Intro

MacOS iTerm2 lrzsz(rz, sz)

## Steps

* Install lrszs (provides rz and sz command) for Mac

* Save the script in your $PATH, e.g.: **/usr/local/bin/**

* Change the script mode bits for execute.

```zsh
#!/usr/bin/env zsh
# scirpt from https://gist.github.com/zthxxx/9171c12538605d92781b74274ba8b9e1
brew install lrzsz

recv='/usr/local/bin/iterm2-recv-zmodem.sh'
send='/usr/local/bin/iterm2-send-zmodem.sh'

curl -sSL https://github.com/Junyangz/iterm2-zmodem/raw/master/iterm2-recv-zmodem.sh -o "$recv"
curl -sSL https://github.com/Junyangz/iterm2-zmodem/raw/master/iterm2-send-zmodem.sh -o "$send"

chmod +x "$recv" "$send"
```

`zsh <(curl -sSL https://github.com/Junyangz/iterm2-zmodem/raw/master/iterm2-zmodem.sh)`

* Setup iTerm2 Trigger for process the folder to place received files in for rz and choose a file to send for sz.

Profiles -> Choose your profile -> Edit Profiles -> Advanced -> Tirgger

```ini
#1
Regular expression: \*\*B0100
Action: Run Silent Coprocess
Parameters: /usr/local/bin/iterm2-send-zmodem.sh
Instant: checked

#2
Regular expression: \*\*B00000000000000
Action: Run Silent Coprocess
Parameters: /usr/local/bin/iterm2-recv-zmodem.sh
Instant: checked
```

Done!
