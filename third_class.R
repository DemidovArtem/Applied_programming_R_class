install.packages('curl')
install.packages('usethis')
install.packages('gitcreds')
install.packages('gh')

library(usethis)
library(gitcreds)

usethis::create_github_token()

gitcreds::gitcreds_set()

# Check credentials
gitcreds::gitcreds_get()

# Check the active GitHub account
gh::gh_whoami()
