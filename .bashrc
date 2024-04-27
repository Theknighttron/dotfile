#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias lock='xtrlock -b'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias padlock='~/.config/xtrlock/lock_screen.sh'
alias light='sudo brillo'
alias inc='sudo brillo -q -A 5'
alias dec='sudo brillo -q -U 5'
alias speedpad="python2 /usr/local/bin/speedpad"


PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



#if [ -f `which powerline-daemon` ]; then
#  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  . /usr/share/powerline/bash/powerline.sh
#fi

# Load Angular CLI autocompletion.
source <(ng completion script)
export PATH=$PATH:/home/polyhistor/go/bin
