#!/bin/bash

: '
This code is a bash script that clones a git repository and performs operations on it. The script accepts optional arguments for the repository, branch and directory to clone, and if none are provided, it defaults to cloning the main branch. The script then clones the repository into a temporary directory, switches to the specified branch and lists prompt the user to select from available branches. After selecting a branch, the script finds the specified directory recursively and copies it to the current directory before cleaning up the temporary repository directory.
'


# Define default values for optional arguments
BRANCH="main"

# Parse command line arguments
while getopts ":r:b:d:" opt; do
  case $opt in
    r)
      REPO="$OPTARG"
      ;;
    b)
      BRANCH="$OPTARG"
      ;;
    d)
      DIR="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Clone the repository
git clone "$REPO" temp_repo
cd temp_repo

# Switch to the specified branch
git checkout "$BRANCH"

# List available branches and prompt the user to select one
echo "Available branches:"
git branch -a
read -p "Enter the name of the branch you want to use: " branch_name

# Switch to the selected branch
git checkout "$branch_name"

# Find the specified directory recursively and copy it to the current directory
echo "Copying directory $DIR..."
find . -type d -name "$DIR" -exec cp -r {} .. \;

# Clean up the temporary repository directory
cd ..
rm -rf temp_repo
echo "Temporary repository directory removed."
