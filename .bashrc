export PAGER="less"
export EDITOR="vim"
export PS1="\u@\h [\w]$ "
export PEPPER_FLASH_VERSION=$(grep '"version":' /opt/google/chrome*/PepperFlash/manifest.json| grep -Po '(?<=version": ")(?:\d|\.)*')
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
alias ls='ls -lah --color=always'
