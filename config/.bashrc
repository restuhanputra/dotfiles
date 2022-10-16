# bash completion
source ~/bash_completion.d/git
source ~/bash_completion.d/docker
source ~/bash_completion.d/docker-machine
source ~/bash_completion.d/docker-compose
source ~/bash_completion.d/aliases

# use scoop in bash
function scoop() {
  powershell -ex unrestricted scoop.ps1 "$@" ;
} && export -f scoop

# git semantic commit
export PATH=$PATH:~/.git-semantic-commits:$PATH
