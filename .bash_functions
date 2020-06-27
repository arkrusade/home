function hubnew() 
{
    if [ $# -eq 0 ]; then
        echo "Need arguments"
        echo "hubnew (user: only orc rn) $repo_name"
        return
    fi
    echo ${1}
    echo ${2}
    # curl -u '${1}' https://api.github.com/user/repos -d "{\"name\":\"${2}\"}"        # create Github repo from command line
    curl -u 'orccrusher99' https://api.github.com/user/repos -d "{\"name\":\"${2}\"}"        # create Github repo from command line
}
