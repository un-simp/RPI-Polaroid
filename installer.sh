#!/bin/bash

sudo apt-get install libcups2-dev libcupsimage2-dev git build-essential cups system-config-printer
git clone https://github.com/adafruit/zj-58
cd zj-58
make
sudo ./install
echo -e "Sucsessful.\\n\\n\\n" > /dev/ttyUSB0