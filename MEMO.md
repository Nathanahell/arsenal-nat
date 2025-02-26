# Merge from upstream
$ cd PROJECT_NAME
$ git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git
$ git fetch upstream

# then: (like "git pull" which is fetch + merge)
$ git merge upstream/master master

# or, better, replay your local work on top of the fetched branch
# like a "git pull --rebase"
$ git rebase upstream/master


# COMMAND CONTRIBUTIONS
Do not edit commands in arsenal/data > commands from upstream
Edit those in my_cheats.

Do add comments do not use "#" character. Using it will cause arsenal to bug. Use "//" instead. Though the autocomplete feature might crash.
