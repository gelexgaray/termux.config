. $PREFIX/etc/bash.bashrc

# Aliases
alias sudo="echo \"sudo request ignored\" && "
alias screen="screen -R"
alias df="df -h"
alias x="exit"
alias hexedit="hexedit --color -m "
alias youtube-dl="$HOME/pipenv/youtube-dl/.venv/bin/youtube-dl"
alias ipython="$HOME/pipenv/ipython/.venv/bin/ipython"
alias calc="qalc"

# Variables de entorno
export WWW_HOME="http://www.duckduckgo.com"
export PIPENV_VENV_IN_PROJECT=true

# PATH: Añadir 'scripts' y todos sus subdirectorios
PATH="$PATH:$HOME/bin:$HOME/scripts"
for d in scripts/*/ ; do
    PATH="$PATH:$HOME/$d"
done
export PATH

# Starship prompt
eval "$(starship init bash)"

clear
echo "Ready!"
