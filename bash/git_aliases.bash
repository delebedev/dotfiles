alias gl='git pull --prune'
alias gf='git fetch --prune'
alias gp='git push origin HEAD'
alias gd='git d --color'
alias gdc='git dc --color'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gst='git status -sb'

# TransferWise fork-PR workflows
alias gpr='gp && git pull-request -o'
alias gsync='gf & gf upstream --prune && git merge upstream/dev && gp'
