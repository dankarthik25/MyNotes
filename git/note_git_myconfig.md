# Manage Multiple git account in github, gitlab, aws-codecommit

Manage differnet ssh-key for different account and servers like (github,
gitlab, aws-codecommit

<https://www.youtube.com/watch?v=lLgWWtOk7gk>

## Create ssh key and share to github/gitlab/aws-commit

``` sh
cd ~/.ssh
#  ssh-keygen -t rsa -b -C karthik.dahchuka@deepalgorithms.in "gitlab-deepalgo"
# ssh-keygen -o -t rsa -C karthik.dahchuka@deepalgorithms.in # 
ssh-keygen -t ed25519 -C "karthik.dahchuka@deepalgorithms.in"  # ed25519 is more secure than rsa

# # # ###########
# save as id_rsa_gitlab-deepalgo with password (save password used-later)
# # # #############
#
#
# Enter file in which to save the key (/home/jayradhey/.ssh/id_rsa): id_rsa_gitlab_deepalgo
cat id_rsa_gitlab_deepalgo.pub
# copy code and past in github or gitlab ssh key

ssh-keygen -t rsa -b 4096 -C "gitlab-dankarthik25"
# save as id_rsa_gitlab-dan25 with password

```

## Config linux to link git with gitlab-ssh 
``` sh
    pwd
    # ~/.ssh/
    touch config

    # Work account - default config
    Host gitlab.com-deepalgo
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_gitlab-deepalgo

    # Personal Account - 
    Host github.com-dan25
    HostName github.com
    User git
    Identityfile ~/.ssh/id_rsa_gitlab-dan25

```

# Frist ssh login into gitlab or github
``` sh
    ssh-add -D  # remove all previous keys 
    ssh-add id_rsa_gitlab-deepalgo   # add below keys 
    ssh-add id_rsa_gitlab-dan25

    # check existing kesy
    ssh-add -l

    # check ssh connection
    ssh -T github.com-deepalgo
    # give the ssh password which you have used for creation  
    ssh -T github.com-dan25
    # give the ssh password which you have used for creation  
```
## Test your ssh is connect with git

Test if ssh is working or not

``` sh
#get newly created  url : git clone git@gitlab.com:deepalgorithms1/cross-account-codepipeline-in-aws.git

# check clone with ssh
git clone git@gitlab.com-deepalgo:deepalgorithms1/cross-account-codepipeline-in-aws.git

# link existing project to newly created gitlab repo
git remove add gitlab-deepalgo git@gitlab.com-deepalgo:deepalgorithms1/cross-account-codepipeline-in-aws.git


# # # ###########################
# 
# # # ############################
# check original remote origin url
git remote -v  # list all remote repo links 
#origin git@github.com:user1/my-repo.git


#change it to use your custom `user1-github` hostname
git remote rm origin
git remote add origin git@user1-github:user1/my-repo.git
```

config git
``` sh
    cd ..
    mkdir work
    nano ~/work/.gitconfig
    # paste below block 
    # ########################################
    [user]
       name =  Coder Train
       email = codertrain@gmail.com



    # ###################################
    cd ~/.gitconfig

    [user]
        name = Sagar Junnarkar
        email =sagarjunnu@gmail.com

    [includeIf "gitdir:~/work/"]
        path = ~/work/.gitconfig
```
# Real time Example
``` sh
    cd ..
    ssh-add -D  # remove all previous keys 
    ssh-add id_rsa_sagarjunnu   # add below keys 
    ssh-add id_codertrain

    # check existing kesy
    ssh-add -l

    # check ssh connection
    ssh -T github.com-sagarjunnu
    ssh -T github.com-codertrain

    # clone and push repo
    #NOTE: in gitclone with ssh replace <git@github.com:> with <git@github.com-codertrain>
    # If not git will use default user

    # Example
    git clone git@github.com-codertrain:coder-train/multipel-git-accounts-demo.git

    # check git user
    git config user.name
```
# git cmd
``` sh
    # get user name and email

    git config user.name
    git config user.email
    git config credential.username
    git config --get user.name
    git config --get user.email


    # Create user name and email
    git config --global user.name "Mona Lisa"
    git config --global user.email "monalisa@gmail.com"

    # list all users in git 
    git config -l
    git config --list

    git remote -v
    git remote add origin https://github.com/dankarthik25/mynotes
    git remote add gitlab-dan25 git@gitlab:
    git remote rm gitlab-dan25  
```
git remote list

# gitlab tutorial

<https://youtu.be/8aV5AxJrHDg?t=2928>

## Branchig Strategies

Github Branching Strategies Git branching Strategies Github branching
Strategies

## gitlab CI/CD pipeline

pipeline : with in pipeline we can define stages and Jobs Stages: Define
chronological order of jobs job:

-   define actual steps to executed (such as running(jenkins jobs)
    commands to complie code )

Runners:

-   Open-source application that executes the instruction defined with
    jobs

## Create CI/CD pipeline

create a yaml in git repo : with name : `.gitlab-ci.yaml`{.verbatim}
Method of create yaml file :

-   from gitlab git reposiotory : `add new files/dir`{.verbatim}
-   LeftSideBar : CI/CD section : `Editor`{.verbatim}
-   local repo create and push

Choose from Editor will give template

## Gitlab Migrating

Jenkins Jobs : Gitlab Runner Jenkins \"environment\" dir : Gitlab
\"variables\" key Jenkins \"tools\" dir :

## Gitlab Pipeline

Deploy artifacts from a gitlab pipeline to
`Gitlab Package Registry`{.verbatim} Describe Gitlab releases Describe
Gitlab Package, Container and Infrastructure registries

### Package Registries

### Container Registries

### Infrasture Registries

# Git AWS Setting

[AWS CodeCommit - fatal: repository
\'<https://git-codecommit.us-east-1>..\' not
found](https://stackoverflow.com/questions/50635130/aws-codecommit-fatal-repository-https-git-codecommit-us-east-1-not-foun)
``` sh
    git config --global credential.UseHttpPath true
```
