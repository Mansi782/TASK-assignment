This repository is  created by me.and it tracks my work and internship tasks
now performing the second step of branching

# Internship Assignment – Git Tasks Documentation


---

## Task 1: Repository Initialization and First Commit

### Objective
To initialize a Git repository and create the first commit.

### Steps Performed
- Created a new project directory
- Initialized a Git repository
- Created a README file
- Staged and committed the file

### Commands Used
```bash
mkdir intern-assignment
cd intern-assignment
git init
touch README.md
git status
git add README.md
git commit -m "Initial commit: added README file"

---

## Task 2: Branching and Merging

### Objective  
To understand how Git branches work and how to merge changes into the main branch.

### Steps Performed  
- Created a new feature branch from the main branch 
- Made changes in the feature branch 
- Staged and committed the changes 
- Switched back to the main branch 
- Merged the feature branch into main
- Deleted the feature branch after successful merge

### Commands Used  
```bash
git checkout -b feature-readme-update
git add README.md
git commit -m "Updated README from feature branch"

git checkout main
git merge feature-readme-update
git branch -d feature-readme-update

### handling merger conflict

---

## Task 3: Handling Merge Conflicts

### Objective  
To understand how merge conflicts occur and how to resolve them manually.

### Steps Performed  
- Created two separate branches from the main branch 
- Modified the same line in the same file differently in both branches 
- Merged the first branch successfully into main 
- Encountered a merge conflict while merging the second branch 
- Opened the conflicted file and resolved the conflict manually 
- Staged and committed the resolved file 
- Deleted both conflict branches after successful merge 

### Commands Used  
```bash
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

---

## Task 4: Working with Remote Repository (GitHub)

### Objective  
To connect the local Git repository to GitHub and synchronize changes between local and remote repositories.

### Steps Performed  
- Renamed the default branch to `main` 
- Added the GitHub repository as a remote 
- Verified remote configuration 
- Pushed local commits to GitHub 
- Made a change directly on GitHub 
- Pulled remote changes to the local repository

### Commands Used  
```bash
git branch -M main
git remote add origin https://github.com/Mansi782/TASK-assignment.git
git remote -v
git push -u origin main
git pull

git checkout -- README.md
git revert HEAD
git reset --soft HEAD~1
git reset --hard HEAD~1


git log --oneline
git rebase -i HEAD~5
git rebase --continue
git push --force

change in the github web.
