#!/bin/bash

# Initialize various settings

# Initialize z.sh

./sh/init-zprezto.sh
./sh/init-z.sh
./sh/init-aqua.sh
./sh/init-rustup.sh

./terminal/init-alacritty/sh

./sh/init-symbolic.sh

# Print a message to indicate success
echo "All initializations complete."