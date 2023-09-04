# [INTRO TO NGINX](https://www.youtube.com/watch?v=JKxlsvZXG7c)

## Purpose of NGINX
### Web Server
Nginx can be used as a web server to serve static and dynamic content. It is known for its high performance and scalability, making it a popular choice for high-traffic websites.
### Reverse Proxy
Nginx can be used as a reverse proxy to improve the performance and security of a website. A reverse proxy sits between the client and the server, and it can handle requests for multiple servers. This can help to improve performance by reducing the load on the servers, and it can also help to improve security by filtering requests.
### Load Balancer
Nginx can be used as a load balancer to distribute traffic across multiple servers. This can help to improve the performance of a website by ensuring that no single server is overloaded.

---
## Advantages & Disadvantages

| Advantages                  | Disadvantages                              |
|-----------------------------|--------------------------------------------|
| High performance: Nginx is known for its high performance, especially when handling static content. | Single configuration file: Nginx only has one single configuration file, which can make it less flexible than other web servers. |
| Scalable: Nginx can be scaled to handle a large number of requests. | Less control over modules: While NGINX is open source, you get less control over its modules than with other web servers. |
| Efficient use of resources: Nginx is efficient in its use of resources, such as memory and CPU. | Not as flexible as Apache: Nginx is not as flexible as Apache, which has a wider range of features and modules. |
| Easy to use: Nginx is relatively easy to use and configure. | Not as well-documented as Apache: Nginx is not as well-documented as Apache, which can make it more difficult to troubleshoot problems. |

---
## Configuring NGINX
The `nginx.conf` configuration file will:

- Use the nginx user and group to run Nginx.
- Create a single worker process.
- Log errors to the /var/log/nginx/error.log file.
- Store the Nginx process ID in the /var/run/nginx.pid file.
- Allow up to 1024 concurrent connections.
- Use the mime.types file to map file extensions to MIME types.
- Set the default MIME type to application/octet-stream.
- Use the main log format to log requests.
- Log access requests to the /var/log/nginx/access.log file.
- Enable the sendfile option to improve performance.
- Disable the tcp_nopush option to improve performance.
- Enable gzip compression to reduce the size of transferred files.
- Disable gzip compression for Internet Explorer 6.
- Create a server block that listens on port 80 and serves requests for the localhost domain.
- The root directive specifies the directory that contains the web content.
- The index directive specifies the list of files that Nginx will try to serve if a request is made for a directory that does not exist.

This is just a sample configuration file, and more cutomization can be made to meet specific needs. For more information on Nginx configuration, refer to [NGINX documentation](https://nginx.org/en/docs/).