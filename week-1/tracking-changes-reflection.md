# Reflection

## How does tracking and adding changes make developers' lives easier?

Whenever you add a new code or make changes to a file, git tracks it automatically. Once you commit in other words save your project you create a mark in your projects timeline. This gives you the ability to revert back to any commit point within the timeline. Also pushing commits to GitHub gives you an extra level of comfort knowing that your commits and projects files (repo) are stored in the cloud. Anything happens to your local repo, you can always pull the latest commit from GitHub.


## What is a commit?

A commit is simply saving file/s and creating a markpoint in your projects timeline. Commits give you the flexibility to go back in time...

## What are the best practices for commit messages?

The first line of the commit message should be a short description with a 50 characters limit
Skip the full stop on the first line
The body should provide a meaningful commit message
Use the imperative, present tense: “change” not “changed” or “changes”.



## What does the HEAD^ argument mean?

As mentioned above there may be more than one commits. HEAD^ indicates the latest commit. By typing:

git reset --soft HEAD^

You reset your project to the last commit. For older commits you can use HEAD^^, HEAD^^^ and so on.

## What are the 3 stages of a git change and how do you move a file from one stage to the other?


## Write a handy cheatsheet of the commands you need to commit your changes?

git pull origin master
Always a good idea to get the latest commit from the server

git add filename
Start with adding the file name to the stage

git commit filename -m "message goes here between the quotes"
Commit the file name to your local git.

git commit filename -am "message goes here between the quotes"
If you want to directly commit with skipping the add part then use this code

git reset --soft HEAD^
If you want to revert back then use this code

git push origin master
Finally push your changes to GitHub

## What is a pull request and how do you create and merge one?




## Why are pull requests preferred when working with teams?



