function fish_greeting
  date "+%a %b %d %R" | figlet -c | lolcat
  cat ~/.config/fish/sword.txt | lolcat
end

alias ll='ls -lah -A -X --group-directories-first'
alias dt='cd ~/Desktop'
alias mv='mv -i'
alias rm='rm -i'
alias copy='xclip -sel clip'
alias ij='intellij-idea-ultimate'
alias starwars='telnet towel.blinkenlights.nl'
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

abbr e 'exit'
abbr t 'touch'
abbr h 'history'
abbr aptup 'sudo apt update && sudo apt upgrade'
abbr ports 'netstat -tulanp'
abbr confish 'vim ~/.config/fish/config.fish'
abbr sfish 'source ~/.config/fish/config.fish'
abbr venv 'python3 -m venv venv --prompt=""'

function mkcd
  mkdir $argv
  and cd $argv
end

function lh
  google-chrome "http://localhost:$argv[1]"
  exit
end
