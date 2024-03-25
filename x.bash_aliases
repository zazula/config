
# ls
alias ls='ls -hFG'
alias dir='ls -hlFG'
alias vi='vim'

# docker
alias docker='sudo docker'
alias podman='sudo podman'
alias dps='sudo docker ps'
alias cont='while true; do clear; sudo docker container ls; sleep 2; done'

# search
alias grep='grep -sE --color=always'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tail='unbuffer grc tail'

# system
alias du='du -x -h'
alias df='df -h'

# journal
function jc() { unbuffer grc journalctl $* | egrep -v 'sshd|sudo'; }
function sjc() { sudo unbuffer grc journalctl $* | egrep -v 'sshd|sudo'; }
