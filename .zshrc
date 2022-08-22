# echo "from zshrc"
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
echo "                                                            "
echo "   ____   __       __     _    __  ___              __    __"
echo "  / __ \ / /_     / /_   (_)  /  |/  /____ _ _____ / /__ / /"
echo " / / / // __ \   / __ \ / /  / /|_/ // __ \`// ___// //_// /"
echo "/ /_/ // / / /  / / / // /  / /  / // /_/ // /   / ,<  /_/  "
echo "\____//_/ /_/  /_/ /_//_/  /_/  /_/ \__,_//_/   /_/|_|(_)   "
echo "                                                            "

alias brs='bend reactor serve'
alias brsu='bend reactor serve --update'
alias bt='BROWSERS=chrome bend yarn'
alias btl='BROWSERS=chrome LOCAL_APP=true bend yarn'
alias brtv='bend reactor ts-validate'
PROMPT='%n λ %(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~ %F{purple}➜ % '

# Auto ls -a after cd
function chpwd() {
    emulate -L zsh
    ls -a
}

function cd() {
    emulate -LR zsh
    builtin cd $@ &&
    ls -a
}


 PROMPT='%n %(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~ %F{purple}➜ % '
#PROMPT="%n@%m%~"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/Users/msorce/.dotfiles/.config/nvim/lua-language-server/3rd/luamake/luamake

