#!/bin/bash

apt-get update && \
apt-get install build-essential wget unzip && \
apt-get install libreadline-dev libssl-dev libncurses5-dev && \
wget https://github.com/SoftEtherVPN/SoftEtherVPN/archive/4b65e251f240d0b36c704acd598f4ceb07c41413.zip &&\
unzip 4b65e251f240d0b36c704acd598f4ceb07c41413.zip && \
cd SoftEtherVPN-4b65e251f240d0b36c704acd598f4ceb07c41413 && \
cp src/makefiles/linux_64bit.mak Makefile && \
make && \
cp bin/vpnserver/vpnserver /opt/vpnserver && \
cp bin/vpnserver/hamcore.se2 /opt/hamcore.se2 && \
cp bin/vpncmd/vpncmd /opt/vpncmd && \
cd .. && \
rm -rf SoftEtherVPN-4b65e251f240d0b36c704acd598f4ceb07c41413 && \
gcc -o /usr/local/sbin/run run.c && \
rm run.c

exit 0
