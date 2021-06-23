alias vim="nvim"
alias vi="nvim"
alias tm="tmux"
alias upall="brew update && brew upgrade"
alias memory="MAVEN_OPTS='-Xms4096M -Xmx4096M -XX:+HeapDumpOnOutOfMemoryError' && echo 'memory increased'"
alias svn up="svn up --depth infinity"
alias build='mvn clean install'
alias quickbuild='mvn clean -T4 install -Dmaven.javadoc.skip=true -Dmaven.test.skip=true'
alias rebuild='cd platform/components ; quickbuild ; cd ../baselogic ; quickbuild ; cd ../../  '
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1'
## functions
# auto ls
function chpwd() {
    emulate -L zsh
    ls -a
}
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source ~/.bash_profile
cat << "banner"
   ____  __         __    _    __  ___           __   __
  / __ \/ /_       / /_  (_)  /  |/  /___ ______/ /__/ /
 / / / / __ \     / __ \/ /  / /|_/ / __ `/ ___/ //_/ /
/ /_/ / / / /    / / / / /  / /  / / /_/ / /  / ,< /_/
\____/_/ /_( )  /_/ /_/_/  /_/  /_/\__,_/_/  /_/|_(_)
           |/
banner

