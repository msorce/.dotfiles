echo "from bashrc"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export JAVA_HOME=$(/usr/libexec/java_home -v11)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
