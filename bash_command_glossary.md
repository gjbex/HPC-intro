# Bash command glossary

*Notes:*
* All command names are case sensitive; Linux file names are also case
  sensitive.
* Do *not* use spaces or special characters in file or directory names.  It
  works, but you *will* regret it.
* In many terminal emulators, you can use the Tab key to auto-complete
  commmands, file and directory names.  Partially type, then press Tab.
* In many terminal emulators, you can use the Up and Down arrow keys to
  navigate through your command history to re-execute previous commands.
* In many terminal emulators, selecting text with the mouse automatically
  copies it to the clipboard, and right-clicking pastes it.  (This is different
  from the usual Ctrl-c/Ctrl-v copy/paste shortcuts.)
* Use Ctrl-c to interrupt a running command.
* *Always* terminate a session by typing `exit` or pressing Ctrl-d.


## Getting help

* Get help about a command: `man ls`
* Get a short summary of a command: `ls --help`


## `cd`: Change Directory

* Example of absolute path: `cd /path/to/my_dir/`
* Example of relative path: `cd my_dir/`
* Go up one directory: `cd ..`
* Go to home directory: `cd`
* Go to your data directory: `cd $VSC_DATA`
* Go to your scratch directory: `cd $VSC_SCRATCH`


## `ls`: LiSt

* List files in current directory: `ls`
* List files that end in `.cpp`: `ls *.cpp`
* List files, displaying file information: `ls -l`
* List files in order of modification time: `ls -lt`
* List all files, including hidden files: `ls -A`


## `tree`

* Display directory structure as a tree: `tree`
* Display directory structure as a tree, including hidden files: `tree -a`
* Display directory structure as a tree, up to a certain depth: `tree -L 2`
* Display directory structure as a tree, including file sizes: `tree -h`
* Display directory structure as a tree, including file sizes and modification times: `tree -h -D`


## `mkdir`: MaKe DIRectory

* Create a directory: `mkdir my_dir/`
* Create a directory and all its parents if they don't yet exist: `mkdir -p
  my_dir/my_subdir/`


## `rm`: ReMove

* Remove a file: `rm my_file`
* Remove a directory recursively: `rm -r my_dir/`


## `cp`: CoPy

* Copy a file: `cp my_file my_file_copy`
* Copy a directory: `cp -r my_dir my_dir_copy`


## `mv`: MoVe

* Rename a file: `mv my_file my_file_new`
* Move a file: `mv my_file my_dir/`
* Move a directory: `mv my_dir/ my_dir_new/`


## `cat`: conCATenate

* Print the contents of a file: `cat my_file`


## `less`

* View the contents of a file one page at a time: `less my_file`
* Quit `less`: type `q`
* Search in `less`: type `/` followed by the search string, then press `n` to
  go to the next match


## `grep`: Global Regular Expression Print

* Search for a string in a file: `grep "my_function" my_file.cpp`
* Search for a string in file, ignoring case: `grep -i "my_function" my_file.cpp`
* Search for a string in all files in a directory: `grep "my_function" *.cpp`
* Search for a string in all files in a directory and subdirectories: `grep -r "my_function" src/`


## `find`

* (Recursively) find files in a directory by file name: `find src/ -name
  "*.cpp"`
* (Recursively) find files in a directory by file name and execute a command on
  them: `find src/ -name "*.cpp" -exec grep "my_function" {} +`
* (Recursively) find files in a directory modified in the last 2 days: `find
  src/ -mtime -2`


## `echo`

* Print text to the terminal: `echo "Hello, World!"`


##  I/O redirection

* Redirect standard output of any command to a file (overwrite): `echo "Hello,
  World!" > my_file.txt`
* Redirect standard output of any command to a file (append): `echo "Hello
  again!" >> my_file.txt`
* Redirect standard input of any command from a file: `cat < my_file.txt`
* Redirect standard error of any command to a file (overwrite): `ls
  non_existent_file 2> error_log.txt`
* Redirect standard error of any command to a file (append): `ls
  non_existent_file 2>> error_log.txt`
* Redirect both standard output and standard error of any command to a file
  (overwrite): `ls existing_file non_existent_file &> output_and_error_log.txt`


## Editing files

Note that many file transfer utilities (e.g., FileZilla, Open OnDemand Home
application) have built-in text editors, which you can use to edit files
directly on the remote server.

If you want to edit files from the command line, `nano` is a simple text editor that is
easy to use for beginners.

* Edit a file with `nano`: `nano my_file.txt`
* Exit `nano`: press `Ctrl-x`, then `y` to save changes or `n` to discard
  changes, then press `Enter` to confirm the file name.
* Get help in `nano`: press `Ctrl-g`
* Save changes in `nano`: press `Ctrl-o`, then press `Enter` to confirm the file
  name.
* Cut a line in `nano`: press `Ctrl-k`
* Paste a line in `nano`: press `Ctrl-u`
* Search in `nano`: press `Ctrl-w`, type the search string, then press `Enter`
* Search and replace in `nano`: press `Ctrl-\`, type the search string, press
  `Enter`, type the replacement string, then press `Enter`
