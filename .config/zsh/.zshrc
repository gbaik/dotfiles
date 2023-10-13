# XDG BASE DIRECTORIES #
export PATH="/opt/homebrew/bin:$PATH"
export HISTFILE="$HOME/.config/zsh/.zsh_history"

autoload -Uz compinit && compinit
eval "$(rbenv init - zsh)"
eval "$(fnm env --use-on-cd)"

# source antidote
source ${ZDOTDIR:-~}/antidote/antidote.zsh
# source ${ZDOTDIR:-~}/.fzf.zsh #[ -f ${ZDOTDIR:-~}/.fzf.zsh ] && 

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# SYSTEM #
function clock() {
  if (( # == "hide" ))
  then
    defaults write com.apple.menuextra.clock IsAnalog -bool false
  else
    defaults write com.apple.menuextra.clock IsAnalog -bool true
  fi
}

# EDIT CONFIG #
function editConfig() {
  cd;
  
  # if (( # == "kitty"))
  # then
  #   cd .config/kitty;
  #   code kitty.conf;
  # else
    code .zshrc;
  # fi
}
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# GENERAL FILE LOCATION #
alias desktop="cd && cd Desktop"
alias downloads="cd && cd Downloads"
alias work="cd && cd Desktop/Work"

# WORK FILE LOCATION #
alias os="cd && cd Desktop/Work/main"
alias rails="cd && cd Desktop/Work/main/OneSignal"
alias dash="cd && cd Desktop/Work/main/dashboard"
alias es="cd && cd Desktop/Work/main/email-service"
alias op="cd && cd Desktop/Work/OnePush"
alias infra="cd && cd Desktop/Work/infra"
alias entitlements="cd && cd Desktop/Work/entitlements"

# GIT COMMANDS #
function gs() {
  git status;
}
function gpo() {
  git push origin $1;
}
function gpoc() {
  git push origin HEAD $1;
}
function gc() {
  git commit $1 $2;
}
function gcheck() {
  git checkout $1 $2;
}
function ga() {
  git add $1;
}
function gstash() {
  git stash $1;
}
function gstashls() {
  gstash list;
}
function gstashd() {
  gstash drop $1;
}
function gstasha() {
  gstash apply $1;
}
function gb() {
  git branch $1;
}
function gl() {
  echo "hello world"
  git log;
}
function glatest () {
  git pull origin $1;
}
function gclear() {
  git reset; 
  gcheck .;
}
function gitlines() {
  git ls-files | xargs wc -l
}
function gri() {
  git rebase -i $1~1 --autosquash
} 

# TAB NAME #
function precmd () {
    print -Pn "\e]0;%~\a"
}

