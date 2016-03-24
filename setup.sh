#!/bin/sh
#
#
#

cd ~/UC-Davis-AR-Sandbox-Configuration-Menu/
cp ./ar-sandbox.desktop ~/Desktop/

sudo sed -i "s|%%HOME%%|$HOME|g" ~/Desktop/ar-sandbox.desktop
