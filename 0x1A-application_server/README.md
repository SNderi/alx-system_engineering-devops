# Application server
The web infrastructure is already serving web pages via Nginx that I installed previously. While a web server can also serve dynamic content, this task is usually given to an application server. In this project I will add this piece to my infrastructure, plug it to my Nginx and make it serve my Airbnb clone project.
## Table of Contents
File | Description
---- | -----------
[2-app_server-nginx_config](./2-app_server-nginx_config) | Configuration for Nginx to serve my page from the route `/airbnb-onepage/`.
[3-app_server-nginx_config](./3-app_server-nginx_config) | Configuration for Nginx to proxy HTTP requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to a Gunicorn instance listening on port 5001. The key to this exercise is getting Nginx configured to proxy requests to processes listening on two different ports.
## Concepts Covered
1. DevOps
2. SysAdmin
