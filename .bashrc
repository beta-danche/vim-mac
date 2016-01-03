##===== 日常快捷方式 =====##
alias v=vim
alias s.b="source ~/.bashrc"
alias ll='ls -lG'
alias ..="cd .."
alias ..2="cd ../.."
alias grep="grep --color"

##========================##
alias gitc="git commit -m  "
alias gitd="git diff "
alias gits="git status "
alias gitl="git status | less "
alias gita="git add  "
##========================##

alias gor="go run "
alias gob="go build "
alias goi="go install "

##========================##

##===== 软件快捷方式 =====##
alias tags="`brew --prefix`/bin/ctags -R *"
alias ack="ack -i"
alias server="python -m SimpleHTTPServer"
alias proxy_socks5="export http_proxy='socks5://127.0.0.1:1080' https_proxy='socks5://127.0.0.1:1080'"
alias proxy_http="export http_proxy='http://127.0.0.1:8118' https_proxy='https://127.0.0.1:8118'"
alias proxy_clear="export http_proxy='' https_proxy=''"

##========================##

##===== 环境变量设置 =====##
##========================##



##===== 终端变量设置 =====##
export PROMPT_COMMAND='echo -ne "\033]0;${USER}:${PWD/#$HOME/~}\007"''""'
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export PS1="\[\e[0;31m\]che\[\e[0;32m\]@Mac \[\e[0;31m\]\j \[\e[0;36m\]\W \[\e[0;32m\]$\[\e[m\]"
export ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future
##========================##

function c () {
    cd "$@" && ls
}

source ~/.bash.local
export PATH="$PATH:/usr/local/sbin/"
