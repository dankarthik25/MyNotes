# git

## What is git

-   git is free and opensouce VCS (Version Control System) created by
    linux torvaldss in 2005. Version Control System mean which is used
    to track all change in project
-   Using git
    -   No data is lost and undo previous data using his
    -   all users can access and share the project
    -   security: outsiders can access and edit the project
    -   git has (distributed repo )

### [TODO]{.todo .TODO} Q) git Vs SVN (Subversion) {#q-git-vs-svn-subversion}

SVN is centralised VCS , Git is distributed VCS SVN is still used
because of its performance with large files won\'t be satisfied with
Git.

## short tutorial

-   Creating a version control of local repository
    -   We need to Create a version contol file (`.git`{.verbatim}) it
        create by `git init`{.verbatim}

``` sh
    git init                                  # Inicialize or Create a version control 
    git status                                # View the Stagging Area
    git add <file>                            # Add files to stagging Area
    git add -A
    git rim --cached <file>                   # Remove files in Stagging Area

    # Ignore files in Stagging Area
    touch .gitignore                          #  list all files  that are need to ignore                    

    git commit -m "fist commit"               # Save-Commit  to Local Repo
    git remote add orgin https://github.com/....                      # Connect Local Repo to Remote Repo
    git push origin master                    # Upload Local Repo to Remote Repo
    git pull                                  # Update Local Repo
    git clone https://github.com/..git        # clone to current dir   # Clone
    git diff  <commit id> <commit id>         # diff : View changes in fiels

    ## Creat Branch ,push, delete:
    git branch <branch-name>       # create a new branch
    git chechout -b <branchname>    # to create and moveing to the   
    git branch                      # list of branch
    git branch --list               # list of branch
    git checkout UncleDaveEmacs     # Switch one branch to other
    git push -u origin UncleDavesEmacs  # push branch from local repo to remote repo
    git branch -D UncleDaveEmacs  # delete a branch
    git push orign <branch-name>     # push branch to remote repo
    git branch -D devop     # git delete a branch in local repository
    git push origin --delete <branch name>     # delete branch at remote repositort
    git push origin --delete UncleDaveEmacs # delete a branch in remote repository

    # Merge
    git chekout master # to go to destination (master)
    git merge <branch-name>     # merge brach to master git

    ## Installation and Configuration Cmd

```

``` sh
git --version   # >> git version 2.3.2

# Configuration 
git config --global user.name "Dankarthik25"
git config -global user.email "dankarthik25@gmail.com"

# help
git help config
git config --help

#
cat ~/.gitconfig
#[user]
#        email = dankarthik25@gmail.com
#        name = Dankarthik25
#[log]
#  date = relative
#[format]
#  pretty = format:%C(auto,yellow)%h%C(auto,magenta)% G? %C(auto,blue)%>(12,trunc)%ad %C(auto,green)%<(7,trunc)%aN%C(auto,reset)%s%C(auto,red)% gD% D
```

## [TODO]{.todo .TODO} Q)three main states in git {#qthree-main-states-in-git}

-   Git has three main states that your files can reside in:
    -   Working-Dir, Stagging Area, Local repo, Remote repo
    -   `Working-Dir`{.verbatim} File but have not have
        `Version Control`{.verbatim} (committed)
    -   `Stagging Area`{.verbatim} Marked a modified file which are to
        be commit
    -   `Committed`{.verbatim} Current files are commented/safed in
        local Repository `.git directory`{.verbatim}.
    -   `Remote Repository`{.verbatim}

### How to Commit files ?

1.  initialize the file or local-repository (git init):()

    Create a version control folder or `initialize`{.verbatim} or track
    (changes or versions) we have to initialize the folder

    ``` sh
    # go the directory (Local-Repositore) that has to be version control 
    git init
    ```

    This will create a `.git`{.verbatim} file in the current directory
    which consist of all the change that are to be done

2.  Adding files to git (git add file)

    files which are uncommited are changed to `staged`{.verbatim}

    ``` sh
        git add <file>             # add files to git
        git add -A                     # add all file
        git status                     # show <file> or all file are change to commited area
    ```

    1.  Example:

        ``` sh
        git add .gitignore
        git add .emacs
        git add .vimrc
        ```

        `.gitignore`{.verbatim} which was in untracked () is changed to
        staging area or committed

3.  Removing files from git (git reset file)

    ``` sh
        git reset <file>                     # remove  files from stating area( committed)
        git reset                                  # remove all files
    ```

4.  .gitignore

    hidden file `.gitignore`{.verbatim} contain the list of the all the
    file and folder that ignore by git for version control

    ``` sh
        touch .gitignore
        ls -a >> .gitigonre # and remove the files need to be VC
    ```

    1.  Example

        in file add the file or folders that are to ignored by git

        ``` sh
        # file that are to ignore
        .DS_Store
        .project
        *.pyc
        ```

5.  Commit files (git commit)

    Note : All files are need to to add/ignored then only we can commit
    files

    ``` sh
        git add -A
        git commit -m "Initial Commit"                        # file are commited 
        git status                                                                  # show nothing to commit , working directoru clean    
    ```

### Connect Local Repository to Remote Repository

``` sh
git remote add origin url    # eg: git remote add origin https://github.com/dankarthik25/pythonUdemyTutorial  
```

### Push Local Repository to Remote Repository (git push)

``` sh
git push origin master
# git push origin master -f     # Force if cmd not works
```

### [TODO]{.todo .TODO} Pull Remote Repository to Local Repository {#pull-remote-repository-to-local-repository}

``` sh
git pull
```

## Clonning a repository

``` sh
git clone <url> <path- which dir>
git clone ../remote_repo.git .
git clone <url> .                        # . means current direcory
```

## Q)Pull vs fetch

-   In the simplest terms, git pull does a git fetch followed by a git
    merge.
-   git fetch
    -   Update your remote-tracking branches under
        refs/remotes/\<remote\>/.
    -   No change in local repo/branch,Staging Area, Working Dir.
-   git pull
    -   Update your remote-tracking branches under
        refs/remotes/\<remote\>/.
    -   Change local branch and Working Dir
        -   Note: All the Untracked data will be lost in Working Dir
        -   Note: merge only current branch wich it is pulled

``` sh
# fetch hold data(fetch data from remote  repository to local repository)  r  but not merges with current reposiotory
git fetch
git merge # it merges local repository to current repository 

# pull
git pull origin <branch-name> # git fetch and git merge
```

## Creating a Branch (git branch \<branch-name\>)

source : <https://nvie.com/posts/a-successful-git-branching-model/>

``` sh
## Creat Branch ,push, delete:
git branch <branch-name>                  # create a new branch
git branch UncleDaveEmacs       # Create a branch
git branch                      # list of branch
git branch --list               # list of branch
git checkout UncleDaveEmacs     # Switch one branch to other
git chechout -b <branchname>    # to create and moveing to the <branch-name>
git push -u origin UncleDavesEmacs  # push branch from local repo to remote repo
git branch -D UncleDaveEmacs  # delete a branch
git push orign <branch-name>     # push branch to remote repo
git branch -D devop     # git delete a branch in local repository
git push origin --delete <branch name>     # delete branch at remote repositort
git push origin --delete UncleDaveEmacs # delete a branch in remote repository
```

## log

Consist of \< commit id, Author, Date, Comment on commit \> mode on your
branch

``` sh
git log  # give <git id,author, date, commit message>
git log --online # give short version only < commit id, comment- message >

#commit 874357761ce77a9a925c1066d9cef6e81a5881a5
#Author: Dankarthik25 <dankarthik25@gmail.com>
#Date:   Fri Apr 10 06:56:16 2020 +0530

 #   Revised Docker

#commit 7432654c56923fe3bc18b19d7ac69e70300d86f4
#Author: Dankarthik25 <dankarthik25@gmail.com>
#Date:   Thu Apr 9 07:16:05 2020 +0530

 #   Seperate Docker_Kubernetics


#    my Notes on Prog
git log --oneline
# 70da939 (HEAD -> master, origin/master) New Change
# 53dd0ee New Change
# f537b27 New Change
# 432784e New Change
# 546bc17 Link and Compose added
# 8743577 Revised Docker
# 7432654 Seperate Docker_Kubernetics
# e981603 Seperate Ansible
# abb9dee last commit
# 9ab9c9a Added Ansible and Docker, Kubernetic files
# c39821d my Notes
# 370fca2 my Notes on Prog

```

## revert :

when code is pushed to remote but you want changes back from remote \>
local

``` sh
git log --oneline # to get the commit id

git revert 77592f3   # to change code frome to remote to local repo

# to change the code from local to remote we need to push from local to remote

git push origin master


```

## reset vs revert

### Git reset

The git reset command allows you to RESET your current head to a
specified state. You can reset the state of specific files as well as an
entire branch. This is useful if you haven\'t pushed your commit up to
GitHub or another remote repository yet.

### Three types of reset

  Type of reset   Description
  --------------- ----------------------------------------------------------------------
  soft            keep all changes in stagging area, remove from local repo
  mixed           keep all changes in workind dir, remove from stagging and local repo
  hard            removes all changes from local repo,stagging and local repo

-   In the simplest terms:

  Type of reset   Workdir            Stagging Area            Local Repo   git log   Remote Repo
  --------------- ------------------ ------------------------ ------------ --------- -------------
  soft            Prescent           moved to Stagging Area   Removed      Removed   Prescent
  mixed           Moved to Workdir   Removed                  Removed      Removed   Prescent
  hard            Removed            Removed                  Removed      Removed   Prescent

### [TODO]{.todo .TODO} revert (Need to check if revert altering history of commits) {#revert-need-to-check-if-revert-altering-history-of-commits}

Both the git revert and git reset commands undo previous commits. But if
you\'ve already pushed your commit to a remote repository, it is
recommended that you do not use git reset since it rewrites the history
of commits. This can make working on a repository with other developers
and maintaining a consistent history of commits very difficult.

Instead, it is better to use git revert, which undoes the changes made
by a previous commit by creating an entirely new commit, all without
altering the history of commits.

``` sh
# delete file in local and remote repo

# To remove file for remote to  
git revert <commitid> 
git commit - m "remove from remote"

got log --oneline

#commit id : 1
#commit id : 2
#commit id : 3
#commit id : 4
#commit id : 5
git reset --soft 2 # keep the commit after 2 (3,4,5) 
#commit id : 3
#commit id : 4
#commit id : 5


git reset --hard 77592f3  # 
git reset --soft 77592f3  # local repo to stagging 
git reset --mixed 77592f3 #  local repo to work - dir

git log --oneline
# beef857 Revert "created test3 file"
# 77592f3 created test3 file
# 1c08f78 created test2 file
# 78b777d created test1 file
# a7968c1 Created hh
# 4b30445 Created bb
# 2e435ca Created gg file to intall git

git revert 1c08f78
git push origin master
```

## Git branching Modeling

If your team is doing continuous delivery then it is suggested to follow
Git branch model. Here is a simple version of it
<https://nvie.com/posts/a-successful-git-branching-model/>

At the core, the development model is greatly inspired by existing
models out there. The central repo holds two main
branches(master(origin) , developer) with an **infinite lifetime**:

-   master : We consider origin/master to be the main branch

-   develop: When the source code in the develop branch reaches a stable
    point and is ready to be released, all of the changes should be
    merged back into master somehow and then tagged with a release
    number.

    Therefore, each time when changes are merged back into master, this
    is a new production release by definition. We tend to be very strict
    at this, so that theoretically, we could use a Git hook script to
    automatically build and roll-out our software to our production
    servers everytime there was a commit on master

    Any feature branch from develop Must merge back into develop.
    feature branches are limited time branch which will eventually
    merged back to develop branch

-   Supporting branches: Development model uses a variety of supporting
    branches to aid

    -   parallel development between team members,
    -   ease tracking of features,
    -   prepare for production releases and to
    -   assist in quickly (bug)fixing live production problems.

    Unlike the main branches, these branches always have a **limited
    life time**, since they will be removed eventually.

The different types of branches we may use are:

-   feature Any feature branch from develop Must merge back into
    develop. feature branches are limited time branch which will
    eventually merged back to develop branch

    naming convention:anything except master, develop, release-**, or
    hotfix-**

    Feature branches (topic branches) are used to develop new features
    for the upcoming or a distant future release. When starting
    development of a feature, the target release in which this feature
    will be incorporated may well be unknown at that point. The essence
    of a feature branch is that it exists as long as the feature is in
    development, but will eventually be merged back into develop (to
    definitely add the new feature to the upcoming release) or discarded
    (in case of a disappointing experiment).

-   release branch Any Release branches from develop and Must merge back
    into develop and master. naming convention(release-\*)

    -   Release branches support preparation of a new production
        release.
    -   Allow for minor bug fixes and
    -   preparing meta-data for a release (version number, build dates,
        etc.).

    By doing all of this work on a release branch, the develop branch is
    cleared to receive features for the next big release.

    The key moment off a new release branch when

    -   atleast all features that are targeted for the
        release-to-be-built must be merged in to develop at this point
        in time.
    -   All features targeted at future releases may not---they must
        wait until after the release branch is branched off.

-   hotfix(BUG-fix) Any hotfix branch from master Must merge back into
    develop and master naming convention:hotfix-\*

    They arise from the necessity to

    -   act immediately upon an undesired state of a live production
        version.
    -   When a critical bug in a production version must be resolved
        immediately, a hotfix branch may be branched off from the
        corresponding tag on the master branch that marks the production
        version.

    The essence is that team members (on the develop branch) can
    continue, while another person is preparing a quick production fix.

## merge

``` sh
git checkout master # to git <branch-name>
git merge devop # git merge <other-branch-name>

##  Example 

# create nn file in "devop"  branch
git checkout devop
touch nn
git add .
git commit -m "created nn file"
git push  origin devop

# merge "devop" branch to  "master branch"
git chekchout master

```

## [TODO]{.todo .TODO} merge vs rebase vs cherrypick {#merge-vs-rebase-vs-cherrypick}

git merge :

-   Is a non-destructive operations
-   Existing branes are not change in any way
-   Create new \<commit-id\> in original(main) branch
-   Normal merge changes history and squash merge will not change
    history all original but new commit-id is created .

git rebase:

-   Moves the entire 2nd branch to main branch
-   Re-writes the project history
-   We get much cleaner and linear project

git cherry-pick:

-   Add specific \<commit -id\> to 1st branch
-   For cherry-pick add particular \<commit -id\>

``` sh
git checkout master
touch aaa
git add aaa
git commit -m "created aaa file in master"

git checkhout -b "release-1.0"
git rebase master
```

### cheery pik

Not all commit id in branch are merged in main branch but selected
commit id are merged in main branch

``` sh
git checkout -b future
touch ww
git add .
git commit -m "create ww file"
touch ww

touch www
git add .
git commit - m "create www file"


touch wwww
git add
git commit - m "create wwww file"

touch wwwww | git add .
git commit -m "create wwwww file"

git log --online 
# c459d7a created wwwwww file
# b866590 created wwwww file
# b510fa6 created www file
# b6b5153 created ww file
# 9d75eb8 created aaa file in master
# 7fb9174 created file called mm

# Q) merge only www file from future brach to master
git log --online # to get the <commit -id> of www file : b877590

git checkout master

git cherry-pick b877590
git log --online 
# b866590 created wwwww file
# 9d75eb8 created aaa file in master
# 7fb9174 created file called mm

```

## conflicts

When two branch \<kar\> \<sanjay\> make different change in a same file

``` sh
git checkout master
vi ww
# hello

git add  .
git commit -m "modified ww file"

git log 

git checkout future
vi ww
# hello,
# book ticktes

git commit -m "modifiled ww file"

git checkout master

git merge future 
#ERROR mESSAGE: CONFLICT (content): merge confilct in ww
#             : fix conflicts and then commit the results
vi ww

```

## Interview Qusestion

-   Q)If branch and merge, and pull and push are done my devops then
    what is role of devops
-   Ans) devops role is to create hotfix branch and and set a maile to
    devops

### what is use of git

-   to track all changes in file or directory in VCS \[Version Control
    System\]
-   can not lose data -delete -revert
-   all users can access and send data

### Different type of vcs

-   cenrtal vcs svn
-   distributed vs : github or bitbucket

## [TODO]{.todo .TODO} Q) fork and clone {#q-fork-and-clone}

# connect local meachine (git) to remote meachine (github)

``` {.bash}
  ssh-keygen -t rsa -b 4096 -C "<email-address.com>"
# Enter file in which to save the key : test_key
ls | grep test_key
test_key      # private key  # can't be shared 
test_key.pub  # public key  can be shared 
cat test_key.pub
```

In github setting \>\> SSH and GPG Keys \>\> New SSH Key Title : Key
name Key : past test~key~.pub

### tell git about ssh key that we generated

Visit Github about : Generating a new SSH key and adding it to the
ssh-agent

``` sh
git push origin master # no hhtp address required and no github email_id and password is required as we done ssh connection
```

### push locally create repo (local-repo)

create a empty repo in github with same name in local-repo copy http
link of github repo <http:github_repo>

``` sh
    # Inside local-repo
  git remote add origin <http:github_repo>
git push -u origin master
```

git push origin master

# Git GUI

GUI git kraken PAID git diff Sublime merge PAID git tower paid git
sourcetree free dev: git bucket available: win, mac , Not Linux github
git ahead free Webstore VS Code + git panel + inbuild termial

# Interview Git

What is git? [Edureka interview
questions](https://www.edureka.co/blog/interview-questions/git-interview-questions/)

# Git AWS Setting

[AWS CodeCommit - fatal: repository
\'<https://git-codecommit.us-east-1>..\' not
found](https://stackoverflow.com/questions/50635130/aws-codecommit-fatal-repository-https-git-codecommit-us-east-1-not-foun)

    git config --global credential.UseHttpPath true