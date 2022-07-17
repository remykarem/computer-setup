alias ipy="ipython --InteractiveShellApp.extensions=\"['autoreload']\" --InteractiveShellApp.exec_lines=\"['%autoreload 2']\""

alias py38="conda activate py38"

git config --global alias.f fetch
git config --global alias.co checkout
git config --global alias.br branch

function push {
    branch_name=$(git name-rev --name-only HEAD)
    git push origin ${branch_name}
}
alias pull="git pull"
alias g=git

function whichappisusingport {
  lsof -i:$1
}

alias py39="conda activate py39"
