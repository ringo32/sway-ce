#
# ~/.bash_profile
#
export $(run-parts /usr/lib/systemd/user-environment-generators | xargs)

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then

fi
