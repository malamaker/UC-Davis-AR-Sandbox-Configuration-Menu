#!/bin/sh
# 
# Author: Malamaker (J.Malavolti) Created: 2016-03-23 Last Updated: 2016-03-24
#

echo "Welcome to the Augmented Reality Sandbox Configuration and Start Menu"

while true; do
	echo "Make a selection from the following List"
	echo "  1) Align your kinect sensor"
	echo "  2) Align your projector"
	echo "  3) Calibrate sensor and projector"
	echo "  4) Start AR Sandbox"
	echo "  5) Exit"
	read -p "Selection: " userSelection

	case "$userSelection" in
		1) 	echo "Starting Kinect Sensor Alignment tool"
			cd ~/src/SARndbox-1.6
			~/Vrui-3.1/bin/RawKinectViewer -compress 0
			;;
			
		2)	echo "Starting Projector Alignment tool"
			~/Vrui-3.1/bin/XBackground
			;;
			
		3)	echo "Starting calibration tool"
			read -p "Enter projector witdth: " calWidth
			read -p "Enter projector height: " calHeight
			cd ~/src/SARndbox-1.6
			./bin/CalibrateProjector -s $calWidth $calHeight
			;;

		4)	echo "Starting AR Sandbox"
			cd ~/src/SARndbox-1.6
			./bin/SARndbox -uhm -fpv
			;;

		5)	echo "Exiting Augmented Reality Sandbox Menu"
			exit
			;;
	esac
	
	sleep 2
	echo "\n\n"
done
