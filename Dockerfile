FROM balenalib/rpi-raspbian

ENV TZ America/Chicago
ENV TIMEZONE America/Chicago

RUN apt-get update && apt-get install -yq --no-install-recommends \
	mplayer cron \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./clock_bells /clock_bells
COPY crontab_clock /crontab_clock
COPY start.sh /start.sh

####
# Uncomment the lines in crontab_clock as needed for which hours to run on
####
RUN cat /crontab_clock | crontab -


CMD ["bash", "start.sh"]