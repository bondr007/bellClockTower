FROM balenalib/rpi-raspbian

RUN apt-get update && apt-get install -yq --no-install-recommends \
	omxplayer cron \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./clock_bells /clock_bells

#RUN echo "0 0 * * * omxplayer /clock_bells/12.mp3" | crontab
#RUN echo "0 1 * * * omxplayer /clock_bells/1.mp3" | crontab
#RUN echo "0 2 * * * omxplayer /clock_bells/2.mp3" | crontab
#RUN echo "0 3 * * * omxplayer /clock_bells/3.mp3" | crontab
#RUN echo "0 4 * * * omxplayer /clock_bells/4.mp3" | crontab
#RUN echo "0 5 * * * omxplayer /clock_bells/5.mp3" | crontab
#RUN echo "0 6 * * * omxplayer /clock_bells/6.mp3" | crontab
RUN echo "0 7 * * * omxplayer /clock_bells/7.mp3" | crontab
RUN echo "0 8 * * * omxplayer /clock_bells/8.mp3" | crontab
RUN echo "0 9 * * * omxplayer /clock_bells/9.mp3" | crontab
RUN echo "0 10 * * * omxplayer /clock_bells/10.mp3" | crontab
RUN echo "0 11 * * * omxplayer /clock_bells/11.mp3" | crontab
RUN echo "0 12 * * * omxplayer /clock_bells/12.mp3" | crontab
RUN echo "0 13 * * * omxplayer /clock_bells/1.mp3" | crontab
RUN echo "0 14 * * * omxplayer /clock_bells/2.mp3" | crontab
RUN echo "0 15 * * * omxplayer /clock_bells/3.mp3" | crontab
RUN echo "0 16 * * * omxplayer /clock_bells/4.mp3" | crontab
RUN echo "0 17 * * * omxplayer /clock_bells/5.mp3" | crontab
RUN echo "0 18 * * * omxplayer /clock_bells/6.mp3" | crontab
RUN echo "0 19 * * * omxplayer /clock_bells/7.mp3" | crontab
RUN echo "0 20 * * * omxplayer /clock_bells/8.mp3" | crontab
#RUN echo "0 21 * * * omxplayer /clock_bells/9.mp3" | crontab
#RUN echo "0 22 * * * omxplayer /clock_bells/10.mp3" | crontab
#RUN echo "0 23 * * * omxplayer /clock_bells/11.mp3" | crontab

CMD ["echo", "HappyBirthdayContainer"]
