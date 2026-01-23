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
```
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
```

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
```
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
```
# Docker, Streamlit & Git – Capstone Project

This repository documents the complete workflow of Docker basics, a simple Python Docker application, and a capstone project using Streamlit, Docker, and Git.

---

##  Docker Basics (Hello World + Python App)

### 1. Install and Verify Docker
```bash
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
docker --version
docker run hello-world
```
### 2.pull an image
```
docker pull python:3.10
docker images
```
### 3.run stop and remove conatiner
```
docker run -it python:3.10
exit
docker ps
docker ps -a
docker stop <container_id>
docker rm <container_id>
docker rmi python:3.10
```
### 4.python docker application
```
mkdir docker-python-app
cd docker-python-app
nano app.py
nano dockerfile

docker build -t my-python-app .
docker run my-python-app
```
### capstone project

## create new git repo
```
mkdir streamlit-docker-app
cd streamlit-docker-app
git init
```
## cretae streamlit app
```
nano app.py
```
## step 3 run streamlit app locally
```
pip3 install streamlit
streamlit run app.py
```
## create requirements file
```
nano requirements.txt
```

## write a dockerfile for streamlit app
```
nano Dockerfile
```
### build and run docker container
```
docker build -t streamlit-app .
docker run -p 8501:8501 streamlit-app
```
### access application via browser

http://localhost:8501
### use git branching
```
git checkout -b dev
git add app.py
git commit -m "Add Streamlit app"

git checkout -b docker
git add Dockerfile requirements.txt
git commit -m "Dockerize Streamlit app"
```
### merge branches
```
git checkout main
git merge dev
git merge docker
```
### push to github and tag release
```
git remote add origin https://github.com/<username>/<repo-name>.git
git push -u origin main
git tag v1.0
git push origin v1.0
```

