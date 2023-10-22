import paramiko

# Define SFTP connection details
hostname = 'your-remote-host'
port = 22
username = 'your-username'
password = 'your-password'

# Initialize the SSH client
transport = paramiko.Transport((hostname, port))
transport.connect(username=username, password=password)

# Create an SFTP client
sftp = transport.open_sftp()

# Upload a file from your local machine to the remote server
local_path = 'local-file.txt'
remote_path = 'remote-file.txt'
sftp.put(local_path, remote_path)

# Download a file from the remote server to your local machine
sftp.get(remote_path, local_path)

# Close the SFTP and SSH connections
sftp.close()
transport.close()
