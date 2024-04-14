 ### [Back to Web Servers](../readme.md)

 Web Servers - Setting Up a Caching Server
=======================================

This guide will walk you through the process of setting up a caching server to improve the performance of your web applications by reducing the load time of frequently accessed resources. We'll be using Varnish as our caching solution due to its popularity and ease-of-use.

Prerequisites
-------------

Before we begin, ensure that:

1. You have a running web application with a dedicated domain or subdomain (e.g., example.com).
2. Your system has root access via SSH.
3. A clean Ubuntu 20.04 LTS server is set up with at least 512 MB RAM.

Instructions
------------

### Step 1: Update System Packages

First, update all existing packages on your server:
```sql
sudo apt update && sudo apt upgrade -y
```

### Step 2: Install Required Dependencies

Install essential dependencies required for installing and configuring Varnish:
```csharp
sudo apt install curl gnupg lsb-release -y
```

### Step 3: Add Varnish Cache Repository

Add the official Varnish cache repository to your sources list:
```ruby
curl -1sLf 'https://dl.cloudsmith.io/public/varnish/varnish-6lts/cfg?distro=ubuntu&source=main' | sudo tee /etc/apt/sources.list.d/varnish-6lts.list
```

### Step 4: Import GPG Key

Import the public key used by the Varnish software packages:

```bash
curl -1sLf 'https://dl.cloudsmith.io/public/varnish/varnish-6lts/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/varnish-archive-keyring.gpg
```

### Step 5: Update Package List Again

Update the package lists again to include the newly added Varnish repository:

```sql
sudo apt update
```

### Step 6: Install Varnish

Now, let's install Varnish using `apt`. The default configuration file provided during installation sets up Varnish to listen on port 80 while Apache runs on port 8080. However, since Nginx typically uses port 80, we need to modify these settings accordingly:

```kotlin
sudo apt install varnish -y
```

### Step 7: Configure Varnish

Open the main Varnish configuration file using nano:

```bash
sudo nano /etc/default/varnish
```

Replace the content with the following, adjusting the IP address according to your environment:

```makefile
DAEMON_OPTS="-a :80 \
             -T localhost:6082 \
             -f /etc/varnish/default.vcl \
             -S /etc/varnish/secret \
             -s malloc,256m"
```

Save and close the file. Then, open the default VCL configuration file:

```bash
sudo nano /etc/varnish/default.vcl
```

Paste the following configuration into the file, replacing "example.com" with your actual domain name:

```perl
# This is a basic VCL configuration file for varnish. It does not do any magic
# but illustrate the basic syntax and structure of a VCL file.

backend default {
    .host = "localhost";
    .port = "8080";
}

sub vcl_recv {
    if (req.http.Host ~ "^(www\.)?(example\.com)$") {
        return (pass);
    }
}

sub vcl_fetch {
    # Happens after we have received a response from the backend.
    #
    # Here you can do things like modifying the response or performing
    # additional fetches.
    
    set beresp.ttl = 1h;
}

sub vcl_deliver {
    # Happens when we have all the pieces we need, and are about to send the
    # response to the client.
    #
    # You can do accounting here.
}
```

Save and exit the editor.

### Step 8: Adjust Firewall Settings

If you use ufw, allow incoming traffic to ports 80 and 6082:

```
sudo ufw allow 80,6082/tcp
```

### Step 9: Restart Services

Restart both services so they pick up the new configurations:

```go
sudo systemctl restart apache2 varnish
```

### Step 10: Test Setup

Access your website using a browser, then check whether Varnish is serving cached pages by executing the following command:

```r
varnishlog -g raw -i requrl
```

You should see output similar to the one below, indicating that requests are being processed by Varnish:

```yaml
*   << Request  >> 123
-   ReqURL       /image.jpg
...
```

Conclusion
----------

By completing this setup, you now have a functioning caching server based on Varnish, which improves the loading times of your web applications. Keep monitoring your systems to ensure optimal performance and make further tweaks as needed. Remember always to test changes thoroughly before deploying them to production environments.