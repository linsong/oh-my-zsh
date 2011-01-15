# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias la='ls -la'
alias lh='ls -lh'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

alias c='clear'

alias wp='cd $PROJECT_DIR'

alias less='less -r'

# use the sed command to convert file format between Unix an DOS 
# sed -e 's/.$//' mydos.txt > myunix.txt
# and I make some alias to make thinks easier
alias dos2unix="sed -e 's/.$//'"
alias unix2dos="sed -e 's/$/\r/'"

alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"' 
