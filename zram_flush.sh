#!/bin/bash
#modprobe zram num_devices=4
	echo 1 > /sys/block/zram1/max_comp_streams
	echo lzo-rle > /sys/block/zram1/comp_algorithm
	echo 2G > /sys/block/zram1/disksize
	echo 1G > /sys/block/zram1/mem_limit
	mkfs.ext4 /dev/zram1
	mount /dev/zram1 /home/ippan/.cache/mozilla/firefox/3v5cpl6l.default-release-1603566928157/cache2 
#	chmod -R 777 /home/ippan/.cache/mozilla/firefox/3v5cpl6l.default-release-1603566928157/cache2 
chown (user) /home/ippan/.cache/mozilla/firefox/3v5cpl6l.default-release-1603566928157/cache2 
