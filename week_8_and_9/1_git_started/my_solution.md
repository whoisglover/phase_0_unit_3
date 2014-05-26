## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
Add one or more files to staging (index).

#### branch
List all the branches in your repo, and also tell you what branch you're currently in.

#### checkout
Switch from one branch to another.

#### clone
Create a working copy of a local repository.

#### commit
Commit changes to head (but not yet to the remote repository).

#### fetch
Pulls down all the data from a remote project that you don’t have yet. If you clone a repository, the command automatically adds that remote repository under the name origin. So, git fetch origin fetches any new work that has been pushed to that server since you cloned (or last fetched from) it. It’s important to note that the fetch command pulls the data to your local repository — it doesn’t automatically merge it with any of your work or modify what you’re currently working on. You have to merge it manually into your work when you’re ready.

#### log
Lists the commits made in that repository in reverse chronological order. That is, the most recent commits show up first. 

#### merge
To merge a different branch into your active branch.

#### pull
Fetch and merge changes on the remote server to your working directory.

#### push
Push the branch to your remote repository, so others can use it.

#### reset
Unstages a file. 

#### rm
Removes a file from Git (from the tracked files), and from your working directory.

#### status
List the files you've changed and those you still need to add or commit.


## Release 3: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally