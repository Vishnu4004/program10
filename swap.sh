#!/bin/bash

# =====================================
# Swap Space Creation Script
# Student Name:
# Roll Number:
# =====================================

# Write your commands below

# Define swap file size and path
SWAP_FILE="/swapfile"
SWAP_SIZE="1G"

# 1. Create a 1 GB swap file
sudo fallocate -l $SWAP_SIZE $SWAP_FILE

# 2. Restrict permissions to root only for security
sudo chmod 600 $SWAP_FILE

# 3. Format the file as swap space
sudo mkswap $SWAP_FILE

# 4. Activate the swap file
sudo swapon $SWAP_FILE

# 5. Make the swap persistent across reboots
echo "$SWAP_FILE none swap defaults 0 0" | sudo tee -a /etc/fstab

# 6. Verify that swap space is active
sudo swapon --show
