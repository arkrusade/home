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

#   This file echoes a bunch of color codes to the
#   terminal to demonstrate what's available.  Each
#   line is the color code of one forground color,
#   out of 17 (default + 16 escapes), followed by a
#   test use of that color on all nine background
#   colors (default + 8 escapes).
#
function echo_colors()
{
    T='gYw'   # The test text

    echo -e "\n                 40m     41m     42m     43m\
         44m     45m     46m     47m";

    # for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
    #            '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
    #            '  36m' '1;36m' '  37m' '1;37m';
    for FGs in $COLORS
        do
        FG="${!FGs}"
        printf "%*s ${FG} $T  " 9 "$FGs"

        for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
            do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
        done
        echo
    done
    echo
}
