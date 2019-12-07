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
##### BOOTUP-SCRIPTS ##### KALI LINUX OS ##### BY: MATT FERLAINO ##### PENETRATION SINCE '17 #######
####################################################################################################

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "-------------------------------"
	echo "This script must be ran as root"
	echo "-------------------------------"
	exit 1
fi

# Kill network connections
echo "--------------------"
echo "Killing connections."
echo "--------------------"
ifconfig wlan0 down # Broadcom adapter

# Change MAC Address
echo "-----------------------"
echo "Changing MAC for wlan0."
echo "-----------------------"
macchanger wlan0 -r
echo "------------"
echo "MAC changed."
echo "------------"

# Raise Interfaces Again
echo "-------------"
echo "Raising wlan0"
echo "-------------"
ifconfig wlan0 up
echo "------------------"
echo "Interfaces raised."
echo "------------------"

# Start SSH 
echo "-------------"
echo "Starting SSH."
echo "-------------"
sudo service ssh start 
echo "---------------------"
echo "SSH has been started."
echo "---------------------"

# Start Anon-Surf 
echo "-------------------"
echo "Starting Anon-Surf."
echo "-------------------"
sudo anonsurf
echo "---------------------------"
echo "Anon-Surf has been started."
echo "---------------------------"

# Exit
echo "----------------------------"
echo "Fernwood.Penetration.Testing"
echo "----------------------------"