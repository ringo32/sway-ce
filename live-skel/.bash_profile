#
# ~/.bash_profile
#
export PATH="$HOME/.local/share/bin:$PATH"
export $(run-parts /usr/lib/systemd/user-environment-generators | xargs)
sudo -E sed -i 's/pkexec/sudo -E/g' /usr/bin/eos-install-mode-run-calamares
sudo -E systemctl restart NetworkManager
sudo sh ./keymap.sh

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec sway
fi
