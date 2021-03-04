function git_branchoff() {
  git checkout -b `git branch --show-current`-$1
}
