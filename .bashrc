#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="\[\e[1;31m\]\u\[\e[0m\]@\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ "

# --- Config Editing ---
alias hyprconf='micro ~/.config/hypr/hyprland.conf'
alias kittyconf='micro ~/.config/kitty/kitty.conf'
alias wayconf='micro ~/.config/waybar/config.jsonc'
alias waystyle='micro ~/.config/waybar/style.css'
alias bashconf='micro ~/.bashrc'

# --- Maintenance ---
alias update='sudo pacman -Syu'
alias install='sudo pacman -S '
alias yayup='yay -Syu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # Cleans up "orphan" packages
alias rb='source ~/.bashrc' # Reloads bash lol
alias eb='micro ~/.bashrc'
alias gitsave='git add . && git commit -m "Abyss Update: $(date +%F_%T)" && git push'
alias gitrestore='git fetch origin && git reset --hard origin/main'
alias gitundo='git checkout .'

# --- Navigation & Utilities ---
alias ..='cd ..'
alias ls='ls --color=auto'
alias fetch='fastfetch'
alias myapps='pacman -Qe'               # List installed apps
alias ff='fastfetch | lolcat'

# --- Scripts ---
export PATH="$HOME/.local/bin:$PATH"
export MICRO_TRUECOLOR=1
