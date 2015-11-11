# Reflection

## How does tracking and adding changes make developers' lives easier?

Whenever you add a new code or make changes to a file, git tracks it automatically. Once you commit in other words save your project you create a mark in your projects timeline. This gives you the ability to revert back to any commit point within the timeline. Also pushing commits to GitHub gives you an extra level of comfort knowing that your commits and projects files (repo) are stored in the cloud. Anything happens to your local repo, you can always pull the latest commit from GitHub.


## What is a commit?

A commit is simply saving file/s and creating a markpoint in your projects timeline. Commits give you the flexibility to go back in time...

## What are the best practices for commit messages?

1. The first line of the commit message should be a short description with a 50 characters limit
2. Skip the full stop on the first line
3. The body should provide a meaningful commit message
4. Use the imperative, present tense: “change” not “changed” or “changes”.


## What does the HEAD^ argument mean?

As mentioned above there may be more than one commits. HEAD^ indicates the latest commit. By typing:

````
git reset --soft HEAD^
````

You reset your project to the last commit. For older commits you can use HEAD^^, HEAD^^^ and so on.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?


## Write a handy cheatsheet of the commands you need to commit your changes?

````
git pull origin master
````

Always a good idea to get the latest commit from the server

````
git add filename
````

Start with adding the file name to the stage

git commit filename -m "message goes here between the quotes"
Commit the file name to your local git.

````
git commit filename -am "message goes here between the quotes"
````

If you want to directly commit with skipping the add part then use this code

````
git reset --soft HEAD^
````

If you want to revert back then use this code

````
git push origin master
````

Finally push your changes to GitHub

## What is a pull request and how do you create and merge one?

Pull requests let you tell others about changes you've pushed to a repository on GitHub. Once a pull request is sent, interested parties can review the set of changes, discuss potential modifications, and even push follow-up commits if necessary.

The steps are:

1. Create/Log in to your GitHub account
2. Go to the page for the code respository you want to contribute to.
3. “Fork” the repository (this creates a clone to your GitHub account)
4. Create a local clone of your fork with git clone
5. Create a local branch for your changes
6. Make your changes and commit them to your local branch with git commit, ensuring to include a descriptive commit message
7. Push the branch to your GitHub fork using git push
8. Go to the page for the upstream repository go to the pull requests tab
9. Click the “New Pull Request” Button
10. Select the branch you want to submit, and write a summary of what your change explaining what it is intended to do and how it is implemented

Once a pull request has been approved the maintainer will pull it into the requested branch of the upstream repository using git merge  command.

## Why are pull requests preferred when working with teams?

In an environment where more than one developer working on a project and making changes to the files requires an authority system to review and approve/reject changes...

Create a pull request to propose and collaborate on changes to a repository. These changes are proposed in a branch, which ensures that the master branch is kept clean and tidy. Pull requests gives the project owner or manager to review it and accept it if found suitable.