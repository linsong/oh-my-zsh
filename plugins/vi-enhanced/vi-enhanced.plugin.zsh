# define my vi keybinding in insert mode
bindkey -N myviins viins
bindkey -A myviins main

bindkey -r '^B'
bindkey '^B' backward-char
bindkey -r '^F'
bindkey '^F' forward-char

bindkey -r '^A'
bindkey '^A' beginning-of-line
bindkey -r '^E'
bindkey '^E' end-of-line

bindkey -r '^P'
bindkey '^P' up-line-or-search 
bindkey -r '^N'
bindkey '^N' down-line-or-search

bindkey -r '^H'
bindkey '^H' backward-delete-char
bindkey -r '^D'
bindkey '^D' delete-char
bindkey -r '^W'
bindkey '^W' backward-delete-word

bindkey -r '^K'
bindkey '^K' kill-line
bindkey -r '^U'
bindkey '^U' backward-kill-line

bindkey -r '^J'
bindkey '^J' down-line-or-search

bindkey -r '^R'
bindkey '^R' history-incremental-search-backward
bindkey -r '^S'
bindkey '^S' history-incremental-search-forward

bindkey -r 'p'
bindkey -r 'n'

bindkey 'n' history-beginning-search-forward
bindkey 'p' history-beginning-search-backward

bindkey -M vicmd '^U' backward-kill-line
bindkey  -M vicmd '^?' delete-char

bindkey -r ' '
bindkey ' ' magic-space    # also do history expansion on space

bindkey -r '^Y'
bindkey '^Y' copy-prev-shell-word 

bindkey -M menuselect '^J' accept-and-infer-next-history
bindkey -M menuselect '^P' reverse-menu-complete

#bindkey -M isearch '^W' backward-delete-word
#bindkey -M isearch '^L' clear-screen
#bindkey -M isearch '^R' history-incremental-search-backward
#bindkey -M isearch '^S' history-incremental-search-forward

