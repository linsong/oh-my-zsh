setopt interactive_comments  # allow commenting out a cmd interactively
#setopt rematch_pcre
setopt cdable_vars
setopt extended_glob
#setopt ksh_glob              # allow *(...), !(...) +(...), ?(...) etc
                              # e.g.: ls (^(arch*)) match all files not start with arch

zle_highlight=(region:bg=green special:standout isearch:fg=red,underline)

