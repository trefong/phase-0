How does tracking and adding changes make developers' lives easier?
It is easier to find bugs, merge, and track code
What is a commit?
A commit is a save point which you have designated as an important stage of the file.
What are the best practices for commit messages?
It is best to be as detailed as you can for commit messages and they should be read like commands.
What does the HEAD^ argument mean?
The HEAD^ argument is used to go back to previous commits.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are untracked, staged, and commited. To go to stage one to stage two you need to use the "git add" command. To go to stage two to stage three, you need to use the "git commit -m "message here"" command. To go backwards from stage three, you need to use the HEAD^ command.
Write a handy cheatsheet of the commands you need to commmit your changes.
"git add (file name)"
"git commit -m "message goes here""
"git reset --soft HEAD^"

What is a pull request and how do you create and merge one?
A pull request is basically submitting your code for review and requesting that your code is pulled from your document and merged into the master one. To create a pull request you must Push your branch ito GitHub. Then you click the compare and pull request button and make sure that the base and comparison branches are correct (base should be the master). Fill in the title and descriptions of the changes that you made and then finally click the create pull request button.
In order to merge a pull request you can click the conversation tab of your pull request and click the merge pull request button.

Why are pull requests preferred when working in teams?
Pull requests are preferred when working in teams because it allows code to be checked before adding it into the final document. It organizes work flow and allows it to be more precise.