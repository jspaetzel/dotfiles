source ~/.profile

# Pickup HelloSign specific aliases if the file exists
if [ -f ~/.bash_hellosign ]; then
    . ~/.bash_hellosign
fi

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

# Java
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_9_HOME=$(/usr/libexec/java_home -v9)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java9='export JAVA_HOME=$JAVA_9_HOME'

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby Version Manager
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a functio$

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# set updatedb
alias updatedb=/usr/libexec/locate.updatedb

# asdf
if [ -f ~/.asdf/asdf.sh ]; then
. ~/.asdf/asdf.sh
fi
if [ -f ~/.asdf/completions/asdf.bash ]; then
. ~/.asdf/completions/asdf.bash
fi

function weather {
	curl "wttr.in/San Francisco, California"
}

function weather_short {
	curl "wttr.in/San Francisco, California?format=3"
}

alias bashreload='source ~/.bash_profile'
alias reloadbash='source ~/.bash_profile'

function base64encode {
	openssl enc -base64 <<< $1
}

function base64decode {
	echo $1 | base64 --decode
}
