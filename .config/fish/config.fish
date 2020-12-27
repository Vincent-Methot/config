source ~/.config/fish/alias.fish
source ~/.config/fish/paths.fish

# Source secret if it exists
# sourceadd ~/.config/fish/secret.fish

# Configure Jump
status --is-interactive; and source (jump shell fish | psub)

# Load all saved ssh keys
/usr/bin/ssh-add -A ^/dev/null

# Set the emoji width for iTerm
set -g fish_emoji_width 2

# Hide the fish greeting
set fish_greeting ""

# Use legacy fzf keybindings
set -g FZF_LEGACY_KEYBINDINGS 1

# Use nvm LTS
nvm use lts/\*

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# Install Starship
starship init fish | source

# Setup minc-toolkit
set -g MINC_TOOLKIT /opt/minc/1.9.18
set -g MINC_TOOLKIT_VERSION "1.9.18-20200813"
set -g PATH $MINC_TOOLKIT/bin $MINC_TOOLKIT/pipeline $PATH
set -g PERL5LIB $MINC_TOOLKIT/perl $MINC_TOOLKIT/pipeline
set -gx LD_LIBRARY_PATH $MINC_TOOLKIT/lib $MINC_TOOLKIT/include/ITK-4.13 $LD_LIBRARY_PATH
set -g MNI_DATAPATH $MINC_TOOLKIT/share
set -g MINC_FORCE_V2 1
set -g MINC_COMPRESS 4
set -g VOLUME_CACHE_THRESHOLD -1
set -g MANPATH $MINC_TOOLKIT/man
# integrated ANTs tools
set -g ANTSPATH $MINC_TOOLKIT/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/vmethot/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

