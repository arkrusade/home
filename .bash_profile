cyg_home="/mnt/c/cygwin64/home/justinjlee99"
alias home="cd ~"
alias cyghome="cd $cyg_home"
alias curr="cd $cyg_home/current/485/3"
alias sbash="source ~/.bash_profile"
alias vbash="vim ~/.bash_profile"
alias senv="source env/bin/activate"
alias denv="deactivate"

TERM=xterm-256color

# only ask for my SSH key passphrase once
if [ -f ${HOME}/.ssh-agent ]; then
    . ${HOME}/.ssh-agent >/dev/null
fi
if [ -z "$SSH_AGENT_PID" -o -z "`ps -a|egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
    /usr/bin/ssh-agent > ${HOME}/.ssh-agent
    . ${HOME}/.ssh-agent > /dev/null
fi
ssh-add ~/.ssh/id_rsa

