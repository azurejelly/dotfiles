source /usr/local/opt/geometry/share/geometry/geometry.zsh

export ZSH="$HOME/.oh-my-zsh"

plugins=(
   git
   zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"