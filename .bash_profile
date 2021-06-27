echo "from bash_profile"
# export MAVEN_OPTS="-Xmx2048m -Xms512m -Dorg.apache.maven.user-settings=/Users/"$USER"/.m2/settings.xml -Djava.net.preferIPv4Addresses=true"
export PATH=/Users/"$USER"/apache-ant-1.10.1/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export PATH="$PATH:/Users/msorce/bin/ossa-boilerplate/scripts/"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias vim="nvim"
alias vi="nvim"
alias upall="brew update --verbose && brew upgrade --verbose && brew doctor --verbose && brew cleanup --prune-prefix --verbose "
alias memory="export MAVEN_OPTS='-Xmx8192m -Xms8192m -XX:MaxPermSize=8192m' && echo 'memory increased 8192m 🤞 😅'"
alias svn up="svn up --depth infinity"
alias ip="ifconfig | grep 'inet ' | grep -v 127.0.0.1"
alias npmnpm="npm set registry https://registry.npmjs.org/ && echo 'now using npm registry'"
alias npmnexus="npm set registry https://npmrepo-dev.wsgc.com/repository/wsgc-npm/ && echo 'now using nexus registry'"
alias stopserver="lsof -i tcp:"
alias vimdiff="nvim -d"
alias bp="vim ~/.bash_profile"
alias zshrc="vim ~/.zshrc"
alias exot="exit"
alias claer="clear"
alias cler="clear"
alias weather="curl wttr.in"
alias missing="svn st | grep ! | cut -d! -f2| sed 's/^ *//' | sed 's/^/\"/g' | sed 's/$/\"/g' | xargs svn rm"
alias fixboilerplate="git branch --set-upstream-to=origin/master master && git pull --allow-unrelated-histories"
alias rm="rm -rf -v"
## functions
# auto ls
function chpwd() {
    emulate -L zsh
    ls -a
}

 cat << "banner"
    ____  __         __    _    __  ___           __   __
   / __ \/ /_       / /_  (_)  /  |/  /___ ______/ /__/ /
  / / / / __ \     / __ \/ /  / /|_/ / __ `/ ___/ //_/ /
 / /_/ / / / /    / / / / /  / /  / / /_/ / /  / ,< /_/
 \____/_/ /_( )  /_/ /_/_/  /_/  /_/\__,_/_/  /_/|_(_)
            |/
banner

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export DEV_TOOLS=/Users/msorce/bin
source "`brew --prefix`/etc/grc.bashrc"
