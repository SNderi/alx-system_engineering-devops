# Load balancer
We intend to improve our web stack so that there is redundancy for our web servers. This will allow us to be able to accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one web server fails, we will still have a second one to handle requests.
## Table of Contents
File | Description
---- | -----------
[0-custom_http_response_header](./0-custom_http_response_header) | Configures Nginx so that its HTTP response contains a custom header.
[1-install_load_balancer](./1-install_load_balancer) | Install and configure HAproxy on your lb-01 server.
[2-puppet_custom_http_response_header.pp](./2-puppet_custom_http_response_header.pp) | Create a custom HTTP header response with Puppet.
## Concepts covered
1. DevOps
2. SysAdmin
