#!/bin/bash

# Initialize various settings

# Initialize z.sh
./sh/init-zsh.sh
./sh/init-zprezto.sh
./sh/init-z.sh
./sh/init-aqua.sh

aquai

./sh/init-symbolic.sh

# Print a message to indicate success
echo "All initializations complete."