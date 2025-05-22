# Bash command glossary

## `cd`: Change Directory

Example of absolute path: `cd /path/to/my_dir/`
Example of relative path: `cd my_dir/`
Go up one directory: `cd ..`
Go to home directory: `cd`
Go to your data directory: `cd $VSC_DATA`
Go to your scratch directory: `cd $VSC_SCRATCH`


## `ls`: LiSt

List files in current directory: `ls`
List files that end in `.cpp`: `ls *.cpp`
List files, displaying file information: `ls -l`
List files in order of modification time: `ls -lt`


## `mkdir`: MaKe DIRectory

Create a directory: `mkdir my_dir/`
Create a directory and all its parents: `mkdir -p my_dir/my_subdir/`


## `rm`: ReMove

Remove a file: `rm my_file`
Remove a directory recursively: `rm -r my_dir/`


## `cp`: CoPy

Copy a file: `cp my_file my_file_copy`
Copy a directory: `cp -r my_dir my_dir_copy`


## `mv`: MoVe

Rename a file: `mv my_file my_file_new`
Move a file: `mv my_file my_dir/`
Move a directory: `mv my_dir/ my_dir_new/`


## `cat`: conCATenate

Print the contents of a file: `cat my_file`


## `less`

View the contents of a file one page at a time: `less my_file`
Quit `less`: type `q`
Search in `less`: type `/` followed by the search term


## `grep`: Global Regular Expression Print

Search for a string in a file: `grep "my_function" my_file.cpp`
Search for a string in file, ignoring case: `grep -i "my_function" my_file.cpp`
Search for a string in all files in a directory: `grep "my_function" *.cpp`
Search for a string in all files in a directory and subdirectories: `grep -r "my_function" src/`


## `find`

(Recursively) find files in a directory by file name: `find src/ -name "*.cpp"`
(Recursively) find files in a directory by file name and execute a command on them: `find src/ -name "*.cpp" -exec grep "my_function" {} +`
(Recursively) find files in a directory modified in the last 2 days: `find src/ -mtime -2`
