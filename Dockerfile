FROM python:3.8.16-buster
RUN apt-get -y update
RUN apt-get install ffmpeg libsm6 libxext6 gettext-base  -y

WORKDIR /app
COPY . .
RUN pip install requests streamlink
CMD ["./start.sh"]