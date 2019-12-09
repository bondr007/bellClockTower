
#!/usr/bin/bash

# Default to UTC if no TIMEZONE env variable is set
echo "Setting time zone to ${TIMEZONE}"
# This only works on Debian-based images
echo "${TIMEZONE}" > /etc/timezone
dpkg-reconfigure tzdata

# start conrtab 
cron -f