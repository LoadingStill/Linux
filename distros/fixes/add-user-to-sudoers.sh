#!/bin/bash

#can I change username to $whoami

echo "username  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/username
