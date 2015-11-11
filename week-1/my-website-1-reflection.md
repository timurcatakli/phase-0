# Reflections

## Paste a link to your [USERNAME].github.io repository.
http://timurcatakli.github.io/

## Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.

#### Create a Repository on GitHub
On GitHub Repositories can contain folders and files, including images – anything your project needs.

To create a new repository

<img src="https://guides.github.com/activities/hello-world/create-new-repo.png"/>

1. Login to your GitHub account
2. Click the  icon next to your username, top-right.
3. Name your repository. E.g "hello-world".
4. Write a short description if needed.
5. Select if you want your repository to be public or private. Don't forget publich repositories could be accessible by anyone.
6. If required select a License type. <a href="http://www.smashingmagazine.com/2010/03/24/a-short-guide-to-open-source-and-similar-licenses/" target="_blank">Read here </a> for a quick primer about Open Source Licenses.
7. Select Initialize this repository.

To clone a new repository

<img src="https://help.github.com/assets/images/help/repository/clone-repo-clone-url-button.png" />

1. On GitHub, navigate to the main page of the repository.
2. Find the clone URL button In the right sidebar of the repository page, click  to copy the clone URL for the repository. See above image.
3. Open Terminal
4. Change the current working directory to the location where you want the cloned directory to be made.
5. Type git clone, and then paste the URL you copied in Step 2.
````
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
````
6. Press Enter. Your local clone will be created.


## Describe what open source means.
<img width="200px" align="left" src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Opensource.svg/2000px-Opensource.svg.png">

Open source software (sometimes called Free and Open Source Software or FOSS) is the practice of sharing how a computer program was made and allowing anyone to customize the program as they see fit. Pretty much all sold software in the market are not Open Source. If they were, we wouldn't spend money on them as they would be free. Also we would have the opportunity to customize them as we see fit and have our own versions.

## What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

I personally prefer using Open Source (OS) software for my personal projects. Having said that OS does not always mean the best solution. There is a famous saying: <i>I am not that rich to buy cheap things</i>. If the developer community for an OS software is not large then you will have problems maintaining it. Recently Magento Commerce had a major security hole and the community acted pretty quikc on it. Same goes for Wordpress. So apart from being OS, the size of the developer community matters first.

## Assess the importance of using licenses.

Licensing is a great alternative to just releasing your work into the public domain or granting permissions on a case-by-case basis.

By releasing into the public domain, you relinquish any copyright, and no one is obligated to list you as the original author or contributor. In the latter case, you may end up spending more time dealing with individual permissions than designing or developing.

Open-source licenses make it easy for others to contribute to a project without having to seek special permission. It also protects you as the original creator, making sure you at least get some credit for your contributions. It also helps to prevent others from claiming your work as their own.

## What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

This challenge made me understand <strong>"branches"</strong> and why they are important. I created and swithced to a branch and made changes to my .md file and then tried to push it to the remote by typing

````
git push origin master
````

Not being able to see my branch on GitHub drove me crazy. But after research I realized that I should be calling the branch name instead of the master branch. That was my Aha moment if you will.


## Did you find any resources on your own that helped you better understand a topic? If so, please list it.

I actually researched quick and mor attractive ways to have a personal GitHub page. First I decided to create my own HTML pages using <a href="http://themeforest.net/item/pivot-multipurpose-html-with-page-builder-v202/8748103" target="_blank">Pivot Page Builder</a>. I wasn't very happy about the results.

After researching I came across <a href="https://jekyllrb.com/" target="_blank">Jekyll</a>. I forked Jekyll's code on GitHub, installed and configured it for my own use and loved it. It will also help me write posts.