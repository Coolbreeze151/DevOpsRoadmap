# SFTP (SSH File Transfer Protocol)

SFTP is a secure file transfer protocol that enables you to transfer files over a secure SSH connection. It provides a secure and efficient way to upload and download files to and from remote servers. This README provides an overview of SFTP and includes some example code files to get you started.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Using SFTP with Command Line](#using-sftp-with-command-line)
3. [Using SFTP in Python](#using-sftp-in-python)
4. [Example Code Files](#example-code-files)

## Prerequisites

Before you start using SFTP, ensure you have the following prerequisites in place:

- A remote server with SSH access.
- SSH credentials (username and password or SSH key) for the remote server.
- SFTP client software installed on your local machine (e.g., OpenSSH for command line usage).

## Using SFTP with Command Line

You can use SFTP from the command line to transfer files between your local machine and a remote server. Here are some basic commands:

### Connect to a Remote Server

```bash
sftp username@remote-server
```
### Upload a File

```bash
put local-file.txt
```

The put command is used to upload a file from your local machine to the remote server. Replace local-file.txt with the path to the file you want to upload.

### Download a File

```bash
get remote-file.txt
```

The get command is used to download a file from the remote server to your local machine. Replace remote-file.txt with the name of the file you want to download.

### List Files on the Remote Server

```bash
ls
```

The ls command allows you to list files and directories on the remote server. It provides an overview of the files available on the server.

### Exit SFTP Session
```bash
exit
```
To exit the SFTP session and return to the command prompt, use the exit command.

### Using SFTP in Python
You can also use Python to interact with SFTP servers. One popular library for this purpose is Paramiko. Here's an example of how to use Paramiko for SFTP:

### Example Code Files
In this repository, you'll find the following example code files:

sftp-commands.sh: A shell script containing example SFTP commands for the command line.
sftp-python-example.py: A Python script demonstrating how to use Paramiko to interact with SFTP servers.

Feel free to use these code files as a reference for working with SFTP in your projects.

### Conclusion
SFTP is a secure and versatile protocol for transferring files to and from remote servers. With the example code and instructions provided in this README, you should be well-equipped to start using SFTP in your projects. Just remember to keep your SSH credentials secure and follow best practices for data transfer over the internet.


