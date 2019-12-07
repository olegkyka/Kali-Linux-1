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
##### FULL-SYSTEM-UPGRADE ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 ##
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Download Updates
echo "--------------------------------"
echo "Downloading first set of updates"
echo "--------------------------------"
apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade

# Clean
echo "--------------------------"
echo "Cleaning old archive files"
echo "--------------------------"
apt-get -y autoclean

# Autoremove
echo "------------"
echo "Autoremoving"
echo "-------------"
apt-get -y autoremove

# Download/Install the net-tools
echo "--------------------------------"
echo "Downloading/Installing net-tools"
echo "--------------------------------"
apt-get install -y net-tools

# Download/Install gedit
echo "----------------------------"
echo "Downloading/Installing gedit"
echo "----------------------------"
apt-get install -y gedit

# Download/Install the full system
echo "----------------------------------"
echo "Downloading/Installing full system"
echo "----------------------------------"
apt-get install -y kali-linux-full

# Update
echo "------------------------"
echo "Updating the full system"
echo "------------------------"
apt-get update && apt-get upgrade && apt-get dist-upgrade

# Exit
echo "--------------------"
echo "Rebooting the System"
echo "--------------------"
echo "----------------------------"
echo "Fernwood.Penetration.Testing"
echo "----------------------------"
reboot 




