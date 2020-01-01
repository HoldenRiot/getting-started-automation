# Git

This ReadMe is a Guide to Setting Up and Using Git. (The Bread & Butter to our work!)

## About Git
Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows.

## Installing Git & Setup:
1. [Download Git](https://git-scm.com/)
2. **Installing Git**
    **If On Mac**
        - Upon install, when asked to `Adjust your PATH environment and how you would like to use Git from the command line`, Select to use *Terminal*.

    **If On Windows**
        - Upon install, when asked to `Adjust your PATH environment and how you would like to use Git from the command line`, Select *Use Git from the Windows Command Prompt* option.
3. Open a new Terminal (if On Mac OS) or Command Prompt/Git Bash Window to Setup your Git Identity.
    - Setting your Identity. The first thing you should do when you install Git is to set your user name and email address. This is important because every Git commit uses this information, and it’s immutably baked into the commits you start creating:
        - $ `git config --global user.name "John Doe"`
        - $ `git config --global user.email name@example.com`

    - You need to do this only once if you pass the --global option, because then Git will always use that information for anything you do on that system.

## Using Git

### Starting a New Project:
1. Create a directory where you wish to start your project.
2. In a new Terminal/Command Prompt/GitBash window:
    - $ `git remote add origin git@github.com:User/UserRepo.git` -- Used to add a new remote repo, where the url is the Repository Url you wish to push your work to. (E.g. Gitlab, GitHub, Bitbucket ect.)
- *If updating an existing repo url:*
    - $ `git remote set-url origin git@github.com:User/UserRepo.git` -- Used to change the url of an existing remote repo

3. Add files/start your project and save your changes.

4. Add the files you wish to push to your newly created repository.
    - $ `git add fileNameHere` -- Used to add a single file to be staged for commit. E.g. $ *git add ReadMe.md*
    - $ `git add .` -- Used to add and stage ALL files in working directory for commit. (Use with caution!). 
        - [Read more on git add](https://git-scm.com/docs/git-add)

5. Check Status
    - $ `git status` -- Used to orain a summary of which files have changes that are staged for the next commit.
        - [Read more on git status](https://git-scm.com/docs/git-status) 

5. Commit your changes.
    - $ `git commit -m "Commit msg here"` -- Used to commit changes. (Be sure to do a pull/fetch and git add on the file(s) you are commiting first!)
        - [Read more on git commit](https://git-scm.com/docs/git-commit)
6. Push your changes.
    - $ `git push -u origin <branch>`
 
### Cloning a Project from existing Repo:
- $ `git clone` -- Used to clone a project from an existing repository. 
    - [Read more on git clone](https://git-scm.com/docs/git-clone)

### Updating Existing Cloned Projects:
- $ `git fetch --all` -- Used to retrieve new work done by other people and new remote-tracking branches & tags. [Read more on git fetch](https://git-scm.com/docs/git-fetch)
- $ `git pull` -- Used to pull the latest work on the active project. [Read more on git pull](https://git-scm.com/docs/git-pull)
- $ `git checkout -b <branch>` -- Used to checkout/create a specific branch name. [Read more on git checkout](https://git-scm.com/docs/git-checkout)
- $ `git add fileNameHere` -- Used to add a single file to be staged for commit. E.g. $ *git add ReadMe.md* [Read more on git add](https://git-scm.com/docs/git-add)
- $ `git status` -- Used to orain a summary of which files have changes that are staged for the next commit. [Read more on git status](https://git-scm.com/docs/git-status) 
- $ `git add .` -- Used to add and stage ALL files in working directory for commit. (Use with caution!). [Read more on git add](https://git-scm.com/docs/git-add)
- $ `git commit -m "Commit msg here"` -- Used to commit changes. (Be sure to do a pull/fetch and git add on the file(s) you are commiting first!). [Read more on git commit](https://git-scm.com/docs/git-commit)
- $ `git push` -- Used to Push your changes after a commit. [Read more on git push](https://git-scm.com/docs/git-push)

## Git Help & Guides
- [Documentation](https://git-scm.com/doc)
- [Git Community](https://git-scm.com/community)
- [Git Cheat Sheet](https://gitsheet.wtf/)

**[Back To Table of Contents](https://github.com/HoldenRiot/getting-started-automation/blob/master/1-Start-Here.md)**
