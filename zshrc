# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/yuri/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

## Robo3t
alias robo3t='/usr/local/robo3t-1.2.1-linux-x86_64-3e50a65/bin/robo3t >/dev/null 2>&1 &'

## Git
alias gb='git branch'
alias gs='git status -sb'
alias gd='git diff'
alias ga='git add -A'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gm='git commit'
alias gc='git checkout'

## Android Studio
alias androidstudio='bash /usr/local/lib/android-studio/bin/studio.sh >/dev/null 2>&1 &'
alias keytool='/usr/java/jdk1.8.0_161/bin/keytool'
alias jarsigner='/usr/java/jdk1.8.0_161/bin/jarsigner'
alias zipalign='/home/yuri/Android/Sdk/build-tools/27.0.3/zipalign'

## Android sdk
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

## nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Proxy settings
alias switchToQuid='. /home/yuri/Documents/scripts/switchToQuid.sh'
alias switchToHome='. /home/yuri/Documents/scripts/switchToHome.sh'

## ls custom colors
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

## Increase Inotify Watches Limit
alias incInotifyLimit='sudo sysctl fs.inotify.max_user_watches=524288 && sudo sysctl -p --system'

## AWS configs
# default
#export AWS_PROFILE=default
# 16thub
export AWS_PROFILE=16thub

# bat > cat
alias cat="bat"

# fzf searcher
alias preview="fzf --preview 'bat --color \"always\" {}'"
# fzf searcher - add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# htop > top
alias top="sudo htop" # alias top and fix high sierra bug

