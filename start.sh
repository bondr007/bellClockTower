
#!/usr/bin/bash

# Default to UTC if no TIMEZONE env variable is set
echo "Setting time zone to ${TIMEZONE}"
# This only works on Debian-based images
echo "${TIMEZONE}" > /etc/timezone
echo "${TIMEZONE}" > /etc/timezone
echo "cat ing timezone file"
cat /etc/timezone
dpkg-reconfigure tzdata
echo "current time is: "
date

# start conrtab 
cron -f