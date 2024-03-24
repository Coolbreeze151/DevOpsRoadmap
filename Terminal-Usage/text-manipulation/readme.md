 # Text Manipulation for Terminal Usage

This README will provide an overview of common text manipulation commands used in the terminal, with reference to the DevOps roadmap by Roadmap.sh (<https://roadmap.sh/devops>). These skills are essential for efficiently handling and processing text data, which is a crucial aspect of various system administration tasks.

## Contents

* Introduction
* Basic Commands
	+ `echo`
	+ `cat`
	+ `head` & `tail`
	+ `cut`
	+ `sort`
	+ `uniq`
	+ `wc`
* Redirection Operators
	+ Input/Output redirections
	+ Pipes
* Advanced Topics
	+ Regular Expressions
	+ Sed
	+ AWK
	+ Grep

## Introduction

Text manipulation involves editing or transforming plain-text files using command line tools. This skillset includes basic operations like concatenating, filtering, sorting, counting lines/words, as well as more advanced techniques such as regular expressions and scripted replacements. Understanding these concepts can significantly improve productivity when working on Linux systems.

The following sections introduce some commonly used text manipulation commands and utilities. For further reading, consult the official documentation provided through man pages (e.g., type "man echo" to learn about the `echo` command) or other online resources.

## Basic Commands

### echo

`echo` allows you to print strings and variables directly into the console. It's often used within scripts to display messages during execution.

Example: Print the string 'Hello World!'
```bash
$ echo Hello World!
```

### cat

Concatenate and display file content(s); useful for quick viewing or creating small files.

Examples: View contents of two files side-by-side
```bash
$ cat file1 file2
```
Create a new empty file named 'example':
```bash
$ cat > example
# Press Ctrl + D when finished entering input
```

### head / tail

Print first/last N lines from a given file; handy for examining large logfiles without opening them entirely. The default value for N is 10.

Examples: Show initial 5 lines of /etc/passwd
```bash
$ head -n 5 /etc/passwd
```
Show last 30 lines of current shell script
```bash
$ tail $BASH_SOURCE
```

### cut

Extract specific fields based on delimiter from one or multiple files; ideal for simple columnar data.

Example: Display users' home directories from /etc/passwd
```bash
$ cut -d: -f6 /etc/passwd | uniq
```

### sort

Sort lines alphabetically or numerically according to specified criteria; supports both ascending and descending order.

Example: Sort words in lexicographic order
```bash
$ sort <file>
```

### uniq

Filter out repeated adjacent entries; typically combined with `sort`.

Example: Count unique occurrences of accesses per IP address in logs
```bash
$ sort <logfile> | uniq -c
```

### wc

Word count utility that calculates number of lines, words, and characters in input.

Examples: Get word count for /usr/share/dict/words
```bash
$ wc --lines /usr/share/dict/words   # Line count only
$ wc --words /usr/share/dict/words   # Word count only
$ wc --chars /usr/share/dict/words    # Character count only
```

## Redirection Operators

Redirection operators allow rerouting standard I/O streams between processes and files. Familiarizing yourself with these symbols enhances your ability to chain together different commands effectively.

### Input/Output redirections

| Symbol | Description                          | Example              |
| ---    | ---                                  | ---                  |
| `>`     | Output redirection to a file         | `ls > dirlist.txt`   |
| `>>`    | Append mode output redirection        | `echo hello >> greetings.txt`  |
| `<`     | Input redirection from a file        | `sort < numbers.txt`  |

### Pipes

Pipe connects stdout of preceding process to stdin of subsequent process; enables sequential chaining of commands.

Example: List all installed packages sorted by size
```bash
dpkg-query -l | awk '{print $3}' | xargs du -h | sort -hr
```

## Advanced Topics

These topics require deeper understanding but offer powerful capabilities once mastered. They include regular expressions, sed, Awk, and grep—all widely employed across various applications and programming languages.

### Regular Expressions

Regular expression patterns match character combinations in strings; they form the basis of search-and-replace functions found throughout Unix-like operating systems.

Example: Find all .conf files recursively under /etc directory
```bash
find /etc -type f -name "*[.]conf"
```

### Sed

Stream editor translates/filters input stream(s), applying changes in real time; great for non-interactive find-and-replace tasks.

Example: Replace all instances of 'foo' with 'bar' in a file
```bash
sed s/foo/bar/g myFile.txt
```

### AWK

Language designed specifically for text processing; provides extensive control over field extraction, pattern matching, arithmetic calculations, conditional statements, etc.

Example: Calculate sum of third columns in space-separated tabular format
```bash
awk '{sum += $3} END {printf "%.2f\n", sum}' sampleData.dat
```

### Grep

Global regular expression print tool searches for user-defined patterns within input sources, highlighting matches if any exist.

Example: Search for lines containing either 'error' or 'warning' keywords
```bash
grep -E 'error|warning' errorLog.txt
```