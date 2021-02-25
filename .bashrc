export EDITOR='vim'
# set -o vi
TERM=xterm-256color

# . "/home/justinjl/.local/share/lscolors.sh"
# export LS_COLORS

# allows Ctrl-S to do fowards search instead of freezing input: https://github.com/mintty/wsltty/issues/155
stty -ixon 

# only ask for my SSH key passphrase once
if [ -f ${HOME}/.ssh-agent ]; then
    . ${HOME}/.ssh-agent >/dev/null
fi
if [ -z "$SSH_AGENT_PID" -o -z "`ps -a|egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
    /usr/bin/ssh-agent > ${HOME}/.ssh-agent
    . ${HOME}/.ssh-agent > /dev/null
fi

# Add bash colors/PS1
if [ -f ~/.bash_colors ]; then
    source ~/.bash_colors 
fi

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add bash functions
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

