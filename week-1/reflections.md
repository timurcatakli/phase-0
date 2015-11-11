[//]: # (your comment goes here)
[//]: # (this comment added by me locally)



#REFLECTIONS

## 1.1 Think About Time Reflection

#### Which time management and productivity ideas did you learn about?

I personally love and follow <I>“Getting Things Done”</I> time management methodology by David Allen. This assessment taught me the “Pomodoro Technique”. Pomodoro technique makes large projects into bitable sizes which makes everything more manageable.

 

I also learnt about the huge benefits of meditation and will definitely give it a try. I already knew concepts like MVP, time boxing but it was good to have a refresher.

 

#### What is "Time Boxing?" How can you use it in Phase 0?

Time boxing technique is to accomplish the work within the previously agreed duration. So you dont work until the work is completed but you work until you run out of time. The time scales could be pomodoros (25 mins) or any duration you feel comfortable.

 
Personally I know that after 2 pomodoros I need to take a long break… So a 2 pomodoro long time boxed sprints would help me plan my day.

 
#### How do you manage your time currently?

I use GTD methodology (https://en.wikipedia.org/wiki/Getting_Things_Done (Links to an external site.)) . I make a list of high priority tasks and make sure that I deliver them without any distractions. I also try to take naps midday and work at night where kids are sleep and less interruptions exist.

 
#### Is your current strategy working? If not, why not?

I have to say it is working up to a point but I know that it has room to grow.

 
#### Can/will you employ any of them? If so, how?

My plan is to employ meditation and have a growth mindset. This way I am planning to increase my focus and have an open mind when it comes to receiving feedback.

 
 #### What is your overall plan for Phase 0 time management?

I am planning to follow GTD, pomodoro techniques and also planning to add meditation into the mix...



## 1.2 The Command Line Reflection

#### 1- What is a shell? What is "bash?"

If “Shell” is a car then bash is “Honda”. There is also “Toyota” etc.

Shell is the Command Line Interface itself (GUI for keyboards) and Bash is the set of rules and functions that runs on top of it.

First there was Bourne Shell and then new functionality like TCP/IP support added and the name changed to “Bourne Again Shell (bash)”.

 
#### 2- What was the most challenging for you in going through this material?

Everything was pretty straight forward. The only challenge I had was when I wanted to change the colors of the ‘ls’ command in my bash profile. Figuring out all the commands below and then forgetting to restart terminal  lost me time but I eventually accomplished.

````
cd ~
````

````
vi .bash_profile
````

````
export LSCOLORS=”ed”
````

````
wq
````

#### 3- Were you able to successfully use all of the commands?

Yes...

#### 4- In your opinion, what are the most important commands and arguments to know?

If there is one command I have to select then I would choose: ```` ‘man’ ````

As long as someone knows ‘man’, the rest can be learnt. Below commands and arguments are also important.

````
-pwd -ls (use it with TAB) -mv -cd -../ -touch -mkdir -less -rmdir -rm -help
````

But the two functionality that grabbed my attention are: ```` ‘alias’ ```` and ```` ‘grep’ ````.

I downloaded James King’s Bible as a txt file and played with it using grep… Got my answers to statistical questions like  “how many times the word Moses got mentioned  in the Bible” etc.

```` Alias ```` also helped me a lot to “cd” to long directory paths.

#### 5- Can you remember what each of the following does of the top of your head? Write what each does.

-pwd - Print working directory: Shows where you are in the unix environment. Your location in reference to ~

 -ls - list: Lists all directories and files with permissions etc. for the current folder structure. Using TAB saves you time and -l shows you details.

 -mv - move: Moving files or, rather, renaming them. It's easy: give the old name and the new name.

 -cd - change directory: Use cd to move from one place to another by using shortcuts such as ../../

 -../ - shortcut: Refers to one folder up

 -touch - make empty files: Function that creates empty files.

 -mkdir - make directory: Creates a directory. mkdir -p will make an entire path even if all the directories don't exist.

 -less: With the help of this command, whatever output is piped or sent to the screen it doesn't over flow or exceed screensize.

 -rmdir - remove directory: Removes or deletes a folder/directory if it is empty.

 -rm - remove: Removes files. Using the option “-rf” removes the files and the folder all together.

-help: If I am not mistaken -help is for Windows and -man is for Unix shell...


## 1.4 Forking and Cloning Reflection

#### If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

 
 <strong>Create / Fork / Clone a Repo Instructions using GitHub</strong>

Before creating a repo you need to understand the difference between Git and GitHub. If you are having problems distinguishing then please come back when you are ready.

 If you ever used Google Drive or Dropbox, then the concept of creating a repo will be very easy to understand.

 Repository or repo for short is simply a folder where you store your work. This could be from your images to code files.

 In order to create a repo using github please follow these steps:

 <strong>1- Login to your GitHub account. And click on the green “+ New repository” button...</strong>

Screenshot 2015-11-10 13.15.00.png

 <strong>2- Fill out the repository name. Make it publicly accessible or not and finally select a License Type if needed and click on the green “Create repository” button.</strong>

 Screenshot 2015-11-10 13.16.54.png

 <strong>3- Voilla, you created your first repo. Now lets fork a repo. Forking a repo is copying someone else’s folder to your account.</strong>

 Go to : https://github.com/timurcatakli/git-real.github.io (Links to an external site.) and click on the “Fork” button located on the top right.

Screenshot 2015-11-10 13.20.35.png

 You successfully forked a repo. Now that repo is located under your account.

 <strong>4- Cloning a repo is making repo contents available in your computer. In order to do that open up your terminal and navigate to the folder where you want the repo to be stored in. Copy the SSH clone URL from the repo page on GitHub and simply type the command below.</strong>
 

git clone git@github.com:timurcatakli/git-real.github.io.git

 And you are done… Don’t forget, creating a repo from scratch and forking a repo are two completely different actions.  By forking a repo you now have a working copy where you can make changes and if needed you can commit those changes…

 
#### What struggles did you have setting up git and GitHub? What did you learn in the process?

Watch tens of videos or read tens of articles. It all gets down to practicing. The concept is actually easy to grasp but when it comes down to branches, it gets complicated. If you have Mac and followed the Phase-0’s “Setting Up Your Computer” instructions then there is pretty much nothing to worry in terms of setting up git and GitHub. Through the process I learnt that I can not only use git for coding but for my own personal use also.
