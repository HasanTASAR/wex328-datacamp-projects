# DataCamp GitHub Foundations - Basic Workflow
# These are the essential commands I use for version control.

# Initialize a new local repository
git init

# Add all changed files to the staging area
git add .

# Commit the changes to the local repository with a descriptive message
git commit -m "Initial commit for DataCamp projects"

# Push the committed changes to the remote repository (GitHub)
git branch -M main
git remote add origin https://github.com/HasanTASAR/wax328-datacamp-projects.git
git push -u origin main
