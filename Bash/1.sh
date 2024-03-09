# Get the present working directory
pwd=$(pwd)

# List all files and directories in the present working directory
files_and_directories=$(ls -l "$pwd")

# Print header
echo "File Information in $pwd:"
echo "----------------------------------------------"

# Print file-related information
echo "$files_and_directories"
