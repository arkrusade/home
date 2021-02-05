#!/bin/bash

function mkalias()
{
    if [ $# -eq 0 ]; then
        echo "Need argument"
        return
    fi
    num=$(grep -n '# line for directory aliases' ~/.bash_aliases | cut -f1 -d:)
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
function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}
function hubnew()
{
    if [ $# -eq 0 ]; then
        echo "Need arguments"
        echo "hubnew user  repo_name"
        return
    fi
    echo creating repo ${2} for user ${1}
    # curl -u '${1}' https://api.github.com/user/repos -d "{\"name\":\"${2}\"}"        # create Github repo from command line
    # curl -u 'orccrusher99' https://api.github.com/user/repos -d "{\"name\":\"${2}\"}"        # create Github repo from command line
    curl -X POST -H "Authorization: token $(cat ~/.ssh/http_pat)"   https://api.github.com/user/repos -d "{\"name\":\"${2}\"}"        # create Github repo from command line

}

# takes two arguments: gitsurl reponame username
# returns the ssh url for the specified git repo
function gitsurl()
{
    if [ $# -eq 0 ]; then
        echo "Need arguments"
        echo "gitsurl reponame username"
        return
    fi

    if [ -z "$2" ]; then
        user=arkrusade
    else
        user=$2
    fi


    # echo repo ${1} for user ${2}
    echo git@github.com:${user}/${1}.git
}
