This repository is  created by me.and it tracks my work and internship tasks
now performing the second step of branching


This repository is created to track my internship learning and hands-on practice related to Git, Shell Scripting, Docker, and Streamlit.
The following section documents the Git tasks performed as part of the assignment.


##Task1:intializing and commit

##Objective:
To initialize a Git repository and create the first commit.

##Steps:
Created a new project directory
Initialized a Git repository
Created a README file
Staged and committed the file

##Commands used:
bash
mkdir intern-assignment
cd intern-assignment
git init

touch README.md
git status
git add README.md
git commit -m "Initial commit: added README file"



2. Branching and Merging
##Objective:
To understand how branches work and how to merge changes into the main branch.

##Steps Performed:
Created a new feature branch
Made changes and committed them in the feature branch
Switched back to the main branch
Merged the feature branch into main
Deleted the feature branch after successful merge

##Commands Used:
git checkout -b feature-readme-update
git add README.md
git commit -m "Updated README from feature branch"

git checkout main
git merge feature-readme-update
git branch -d feature-readme-update

##Outcome:
Feature branch merged successfully into main
Repository maintained in a clean state



3. Handling Merge Conflicts
Objective
To understand how merge conflicts occur and how to resolve them manually.

##Steps Performed:
Created two separate branches from main
Modified the same line in the same file differently in each branch
Merged the first branch successfully
Encountered a merge conflict while merging the second branch
Resolved the conflict manually
Completed the merge and cleaned up branches

##Commands Used
git checkout -b conflict-branch-1
git add README.md
git commit -m "Updated README from conflict branch 1"

git checkout main
git checkout -b conflict-branch-2
git add README.md
git commit -m "Updated README from conflict branch 2"

git checkout main
git merge conflict-branch-1
git merge conflict-branch-2

git add README.md
git commit -m "Resolved merge conflict in README"

git branch -d conflict-branch-1
git branch -d conflict-branch-2

###Outcome
Merge conflict successfully resolved
Demonstrated understanding of real-world Git conflict handling
Repository kept clean after mergin
