
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'
#
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              

hostname=`hostname`
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]yanglei@${hostname}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"


# alt-p, alt-
case "$-" in
*i*)
  bind  '"\ep":history-search-backward'
  bind  '"\en":history-search-forward'
esac

export EDITOR=emacs
export PATH=$PATH:~/.local/bin