# Define the list of services to restart
$services = @("ServiceName1", "ServiceName2", "ServiceName3")

# Define the list of servers
$servers = @("server1", "server2", "server3")

# Loop through each server and restart the services
foreach ($server in $servers) {
    foreach ($service in $services) {
        Restart-Service -ComputerName $server -Name $service -Wait -Force
    }
}
