# TODO: dependant on shell variable?
# port to zsh
alias sbash="source ~/.bashrc"
alias vbash="vim ~/.bashrc"

# TODO: should be dependant on some sort of env variable
# different for desktop vs laptop etc
# should probably just make this home instead of cyghome
# since cyghome was effectively home
CYG_HOME="/mnt/c/cygwin64/home/Justin\ Lee"
# CYG_HOME="/mnt/c/cygwin64/home/justinjlee99"
alias cyghome="cd $CYG_HOME"
# alias curr="cd $CYG_HOME/current/"
alias curr="cd $HOME/current"

alias shad="ssh-add ~/.ssh/id_rsa"
# alias caen="~/caen"

alias lastc="history 2 | head -1 | cut -c 8-"
alias clp='`lastc` | clip.exe'

# TODO: remove once ohmyzsh osx/git aliases are included
alias ll="ls -lhA"
alias la="ls -A"
alias gs="git status"

# alias git="hub"
# alias hub="$CYG_HOME/AppData/Local/GitHubCLI/bin/hub.exe"


### Python aliases and related commands

alias python="python3"
alias menv="python3 -m venv env"
alias senv="source env/bin/activate"
alias denv="deactivate"

### Directory aliases

# TODO: allow to change existing aliases, instead of just making new ones
# also should be different for different environments
# line for directory aliases
alias 7='cd /home/justinjl/current/470'
f91="$HOME/current/491/"
alias 9='cd $f91'
alias 3='cd $f91/3'
alias 4='cd $HOME/current/470/3'
# alias bread='cd /mnt/c/cygwin64/home/Justin\ Lee/current/sacd/BreadTest'
# alias sacd='cd /mnt/c/cygwin64/home/Justin\ Lee/current/sacd/App/server'
# alias final='cd /mnt/e/442'
# alias 4='cd /mnt/c/cygwin64/home/Justin\ Lee/current/442'
