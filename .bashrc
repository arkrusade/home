export EDITOR='vim'

alias sbash="source ~/.bashrc"
alias vbash="vim ~/.bashrc"

set -o vi

CYG_HOME="/mnt/c/cygwin64/home/Justin\ Lee"
function mkalias() 
{
    if [ $# -eq 0 ]; then
        echo "Need argument"
        return
    fi
    num=$(grep -n 'directory aliases' ~/.bash_aliases | cut -f1 -d:)
    let num=num+1
    line="alias ${1}='cd $(printf '%q\n' "$(pwd)")'" 
    # echo $line
    sedthing="${num}i $(printf '%q\n' "$line")"
    # echo $sedthing
    # sed -i "$sedthing" ~/.bashrc
    sed -i "$sedthing" ~/.bash_aliases
    # sed "${num}q;d" ~/.bashrc
    sbash
}

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
# ssh-add ~/.ssh/id_rsa
# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add bash functions
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_functions
fi
