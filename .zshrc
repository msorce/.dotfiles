# echo "from zshrc"
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


 PROMPT='%n %(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~ %F{purple}➜ % '
#PROMPT="%n@%m%~"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
