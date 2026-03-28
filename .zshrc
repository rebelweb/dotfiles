# ZPlug (zsh plugins)
source ~/.zplug/init.zsh
zplug "plugins/git",   from:oh-my-zsh # Git Aliases
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Syntax Highlighting
zplug "dracula/zsh", as:theme

zplug load --verbose

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$PATH:$HOME/.bin:$HOME/.asdf/shims"
export PATH