#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

LBLUE="\033[34m"
RED='\033[0;31m'
NC='\033[0m'

PS1='\033[1;34m[\033[0;31m\u\033[0m@\h \033[1;34m\W]\033[0m\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${RED}${USER}${NC}" "${HOSTNAME%%.*}" "${LBLUE}${PWD/#$HOME/\~}${NC}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias lyrics="python3 '/home/pietro/Documenti/0Programs/Python/Lyrics-finder/script/lyrics.py' "
alias ls='ls --color=auto'
