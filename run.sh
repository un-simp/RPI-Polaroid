#!/bin/bash

for (( ; ; ))
do
   read -n1 -r -p "Press space to continue..." key

   if [ "$key" = '' ]; then

   raspistill -vf -hf -o /home/pi/img.png

   lpr -o fit-to-page /home/pi/img.png
   fi
done
