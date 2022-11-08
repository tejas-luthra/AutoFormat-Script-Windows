#!bin/bash
lsblk

sleep .2

echo "What drive should be formatted? Make sure to choose the right one."

read drive

umount $drive '1' $drive'2' $drive '3' 

sleep 0.5 

wipefs -a $drive

sleep 0.2

echo ';' | sfdisk -X gpt $drive

sleep .05

mkfs.exfat $drive'1'

sleep 0.5

parted $drive set 1 msftdata on

echo "The drive has been formatted with exfat :)"
