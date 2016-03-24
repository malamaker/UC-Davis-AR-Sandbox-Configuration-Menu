#!/bin/sh
#
# Author: Malamaker (J.Malavolti) Created: 2016-03-24 Last Updated: 2016-03-24
#

# Chage to App Folder and copies desktop icon to the Desktop directory
cd ~/UC-Davis-AR-Sandbox-Configuration-Menu/
cp ./ar-sandbox.desktop ~/Desktop/

# Replaces the HOME token with the HOME environmental variable
sudo sed -i "s|%%HOME%%|$HOME|g" ~/Desktop/ar-sandbox.desktop
