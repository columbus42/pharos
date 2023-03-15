#!/bin/bash
# This scirpt must be run as root!
# Run 'chmod a+x add-sudoer.sh' before using this script.
# Use Ctrl + D to exit 'su'

echo 'YOUR_USERNAME  ALL=(ALL:ALL) ALL' >> /etc/sudoers
