# Usefull commands   

# Git commands
 
---

## Basic configurations  

### configure the name that appears in commits    


    git config --global user.name name 

### configure email

    git config --global user.email email@email.com

### set colors for commands

    git config --global colors true

---

## start repository

### start git in the folder where the project is

    git init

### clone the github repository

    git clone <url>

### lists a current state of the reposity with a list of files changed or added

    git status

---

## git add

### we add all the files for the commit

    git add .

### we add the file to the commit

    git add  <file>

### we add all the files for the commit omitting the 

    git add --all

### add files with specific extension

    git add *.txt

### we add all files inside a directory

    git add docs/

### we add all files inside a directory with specific extension

    git add docs/*txt

---

## git commit

### load in the head the changes made

    git commit -m "commit description"

### add and load in the head the changes made

    git commit -a -m "commit description"

### if there are conflicts, it show them

    git commit -a

### add to last commit, this is not shown as a new commit in the logs

    git commit --amend -m "commit description"

---

## git push

### we upload to the repository

    git push <origien> <branch>

### we upload a tag

    git push --tags

---

## git log

### shows commit logs

    git log

### show changes on commits

    git log --oneline --stat

### shows graphs of commits

    git log --oneline --graph

---

## git diff

### shows changes made to a file

    git diff

### show changes between commits

    git diff <commit_id1> <commit_id2>

---

## git head

### get a file out of commit

    git reset HEAD <file>

### returns the last commit that was made and puts the changes in staging

    git reset --soft HEAD^

### returns the last commit and all changes

    git reset --hard HEAD^

### returns the last 2 commits and all changes

    git reset --soft HEAD^^

---

## git remote

### add remote repository

    git remote add origin <url>

### change remote

    git remote set-url origin <url>

### remove repository

    git remote rm <name/origin>

### show list of repositories

    git remote -v

### show remote branches

    git remote show origin

### clear all deleted branches

    git remote prune origin

---

## git branch

### create a branch

    git branch <nameBranch>

### list the branches

    git branch

### command -d removes the branch and joins it to master

    git branch -d <nameBranch>

### delete branch remote

    git push <remote> --delete <branch>

---

## git merge

### steps to merge

##### start a new feature

    git checkout -b new-feature main

##### edit some files

    git add <file>
    git commit -m "start a feature"

##### merge in the new-feature branch

    git checkout main
    git merge new-feature
    git branch -d new-feature

## git pull

### pull and dowload content from a remote repository and instantly update the local repository to reflect that content

    git pull origin main
    
## git fetch

### updates with the latest information in the remote repository, but doesn't do any file transfers to your local workspace

    git fetch origin main
 
