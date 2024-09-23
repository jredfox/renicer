#!/bin/sh
echo "Installing renicer"
sudo mkdir -p /usr/local/bin/renicer_bin
sudo cp /usr/bin/renice /usr/local/bin/renicer_bin/renicer #Copy renice
sudo chown -R root:root /usr/local/bin/renicer_bin # Make Root owner
sudo chmod 755 /usr/local/bin/renicer_bin
sudo chmod 755 /usr/local/bin/renicer_bin/renicer # Ensure Executable for all users but not Editable
sudo chmod u+s /usr/local/bin/renicer_bin/renicer # Run as Root
sudo rm -f /usr/local/bin/renicer
sudo ln -s /usr/local/bin/renicer_bin/renicer /usr/local/bin/renicer # Make it findable in Terminal
