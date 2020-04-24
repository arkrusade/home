# PATH=$PATH:~/bin
export PATH
export EDITOR='vim'

alias sbash="source ~/.bashrc"
alias vbash="vim ~/.bashrc"

CYG_HOME="/mnt/c/cygwin64/home/Justin\ Lee"
function cdhere() 
{
    if [ $# -eq 0 ]; then
        echo "Need argument"
        return
    fi
    num=$(grep -n 'directory aliases' ~/.bashrc | cut -f1 -d: | sed -n '2 p')
    let num=num+1
    line="alias ${1}='cd $(printf '%q\n' "$(pwd)")'" 
    # echo $line
    sedthing="${num}i $(printf '%q\n' "$line")"
    # echo $sedthing
    sed -i "$sedthing" ~/.bashrc
    # sed "${num}q;d" ~/.bashrc
    sbash
}
# TODO: change to .bash_aliases file
# and allow to change existing aliases, instead of just making new ones
# line for directory aliases
alias final='cd /mnt/e/442'
alias 4='cd /mnt/c/cygwin64/home/Justin\ Lee/current/442'
alias cyghome="cd $CYG_HOME"
alias curr="cd $CYG_HOME/current/"


alias caen="~/./caen"
# alias git="hub"
alias gs="git status"

alias python="python3"
alias menv="python3 -m venv env"
alias senv="source env/bin/activate"
alias denv="deactivate"

TERM=xterm-256color
# allows Ctrl-S to do fowards search instead of freezing input: https://github.com/mintty/wsltty/issues/155
stty -ixon 

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

