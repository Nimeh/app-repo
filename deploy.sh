#!/bin/bash

set -e  # Exit on erro
echo "Starting deployment..."

# Install dependencies
sudo apt update -y
sudo apt install -y nodejs npm git

# Navigate to app folder (assuming it's cloned in /home/ubuntu/app)
cd /home/ubuntu/app

# Install Node.js dependencies
npm install

# Start the app
nohup npm start > app.log 2>&1 &

echo "Deployment finished!"

