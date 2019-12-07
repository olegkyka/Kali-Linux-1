####################################################################################################
##                                  FERNWOOD PENETRATION SUITE V1                                 ##
##                    ###########   ###########   ###########   ####        ##                    ##
##                    ##            ##            ##       ##   ## ##       ##                    ##
##                    ##            ##            ##       ##   ##  ##      ##                    ##
##                    ##            ##            ##       ##   ##   ##     ##                    ##
##                    #######       #######       ###########   ##    ##    ##                    ##
##                    ##            ##            ##     ##     ##     ##   ##                    ##
##                    ##            ##            ##      ##    ##      ##  ##                    ##
##                    ##            ############  ##        ##  ##        ####                    ##
##                                                                                                ##
####################################################################################################
##### AUTOSTART X11VNC ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 #####
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Create New Directory
echo "-------------------------------------"
echo "Making new directory and copying code"
echo "-------------------------------------"
cp -f /root/Desktop/Kali-Linux-Tools/VNC/VNC-Script /lib/systemd/system/x11vnc.service

# Enable the service
echo "----------------"
echo "Enabling Service"
echo "----------------"
systemctl daemon-reload
systemctl enable x11vnc.service

# Exit
echo "----------------------------"
echo "Fernwood.Penetration.Testing"
echo "----------------------------"
