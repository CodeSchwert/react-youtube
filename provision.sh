#!/bin/bash
#
# Provisioning script for React and Redux courses
#

echo "==> Running provisioning script"

echo "==> Installed packages:"
echo "$(docker -v)"
echo "node.js $(node -v)"
echo "npm $(npm -v)"

# Install application specific packages
sudo npm install express
sudo npm install express-generator -g

# Pull Docker images
sudo systemctl stop arangodb3.service
sudo systemctl disable arangodb3.service

#
# DISBALE FIREWALL ... makes developing microservices a whole lot easier!!
#
sudo systemctl stop iptables
sudo systemctl disable iptables
