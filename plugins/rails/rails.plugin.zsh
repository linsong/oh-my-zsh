alias ss='script/server'
#alias ss='thin --stats "/thin/stats" start'
alias ts="thin start"     # thin server

alias sg='ruby script/generate'
alias sd='ruby script/destroy'
alias sp='ruby script/plugin'
alias ssp='ruby script/spec'
alias rdbm='rake db:migrate'
alias sc='ruby script/console'
alias sd='ruby script/server --debugger'
alias devlog='tail -f log/development.log'
alias taild='tail -f log/development.log' # tail dev log
alias restartapp='touch tmp/restart.txt'
alias restart='touch tmp/restart.txt'  # restart passenger
