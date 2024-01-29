# Define user information
$username = "NewUserAccount"
$password = "StrongPassword123!"
$firstName = "John"
$lastName = "Doe"

# Define the list of servers
$servers = @("server1", "server2", "server3")

# Loop through each server and create the user account
foreach ($server in $servers) {
    New-LocalUser -ComputerName $server -Name $username -Password $password -FullName "$firstName $lastName"
}
