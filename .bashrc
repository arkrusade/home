# PATH=$PATH:~/bin
export PATH

cyg_home="/mnt/c/cygwin64/home/justinjlee99"
alias cyghome="cd $cyg_home"
alias curr="cd $cyg_home/current/442/2"

alias sbash="source ~/.bashrc"
alias vbash="vim ~/.bashrc"

alias caen="~/./caen"
# alias git="hub"
alias gs="git status"

alias python="python3"
alias menv="python3 -m venv env"
alias senv="source env/bin/activate"
alias denv="deactivate"

TERM=xterm-256color

function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

# only ask for my SSH key passphrase once
if [ -f ${HOME}/.ssh-agent ]; then
    . ${HOME}/.ssh-agent >/dev/null
fi
if [ -z "$SSH_AGENT_PID" -o -z "`ps -a|egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
    /usr/bin/ssh-agent > ${HOME}/.ssh-agent
    . ${HOME}/.ssh-agent > /dev/null
fi
ssh-add ~/.ssh/id_rsa

