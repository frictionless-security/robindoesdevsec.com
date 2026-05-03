#!/bin/bash

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then 
  echo "Please run as root (use sudo)."
  exit 1
fi

echo "------------------------------------------------"
echo "Starting System Update & Maintenance"
echo "Date: $(date)"
echo "------------------------------------------------"

# 1. Update package lists
echo "[1/5] Updating package repositories..."
apt-get update -y

# 2. Upgrade installed packages
echo "[2/5] Upgrading installed packages..."
apt-get upgrade -y

# 3. Full distribution upgrade (handles changing dependencies)
echo "[3/5] Performing distribution upgrade..."
apt-get dist-upgrade -y

# 4. Remove unnecessary packages and dependencies
echo "[4/5] Cleaning up unused packages..."
apt-get autoremove -y

# 5. Clean up the local repository of retrieved package files
echo "[5/5] Cleaning up package cache..."
apt-get autoclean -y

echo "------------------------------------------------"
echo "System Update Complete!"
echo "------------------------------------------------"