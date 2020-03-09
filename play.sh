
#!/usr/bin/bash

echo "Clock ding is $1 and date is $(date)" & omxplayer /mnt/ramdisk/clock_bells/$1.mp3
echo "end playing dingaling $1 at $(date)"
