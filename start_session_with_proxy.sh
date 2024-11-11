#!/bin/bash

# Prompt for proxy IP
echo "Please enter your proxy settings"

# Get Proxy IP
read -p "Enter proxy IP: " proxy_ip
echo "You entered IP: $proxy_ip"

# Get Proxy Port
read -p "Enter proxy port: " proxy_port
echo "You entered Port: $proxy_port"

# Get Proxy Username (Optional)
read -p "Enter proxy username (leave blank if none): " proxy_user
if [ -n "$proxy_user" ]; then
    echo "You entered Username: $proxy_user"
else
    echo "No username entered."
fi

# Get Proxy Password (Optional)
read -sp "Enter proxy password (leave blank if none): " proxy_pass
echo

if [ -n "$proxy_pass" ]; then
    echo "You entered Password: [hidden]"
else
    echo "No password entered."
fi

# Set the Proxy Environment Variables
export http_proxy="http://$proxy_user:$proxy_pass@$proxy_ip:$proxy_port"
export https_proxy="http://$proxy_user:$proxy_pass@$proxy_ip:$proxy_port"

# Verify the proxy setup
echo "Proxy setup complete:"
echo "HTTP Proxy: $http_proxy"
echo "HTTPS Proxy: $https_proxy"

# Add any other commands you want to run after setting up the proxy