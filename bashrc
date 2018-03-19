# Obtener nombre de dispositivo
if [ -z $ANDROIDHOST ]
then
	export ANDROIDHOST=$(getprop net.hostname)
fi

# Aliases
alias sudo="echo \"sudo request ignored\" && "
alias vim="nvim"
alias vi="nvim"
alias screen="screen -R"
alias df="df -h"
alias x="exit"

# Variables de entorno
export PS1="[$ANDROIDHOST:\\W \\$] "
export WWW_HOME="http://www.duckduckgo.com"

# PATH: Añadir 'scripts' y todos sus subdirectorios
PATH="$PATH:$HOME/bin:$HOME/scripts"
for d in scripts/*/ ; do
    PATH="$PATH:$HOME/$d"
done
export PATH
