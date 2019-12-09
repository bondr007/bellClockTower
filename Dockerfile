FROM balenalib/rpi-raspbian

ENV TIMEZONE America/Chicago
RUN echo "America/Chicago" > /etc/timezone
RUN dpkg-reconfigure tzdata


RUN sudo echo "America/New_York" > /etc/timezone
RUN sudo dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && apt-get install -yq --no-install-recommends \
	mplayer cron \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./clock_bells /clock_bells
COPY crontab_clock /crontab_clock


####
# Uncomment the lines in crontab_clock as needed for which hours to run on
####
RUN cat /crontab_clock | crontab -


CMD ["cron", "-f"]