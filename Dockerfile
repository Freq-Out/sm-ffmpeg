FROM ubuntu:16.04
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
RUN apt-get update -y
RUN apt-get install -y ffmpeg && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/*
COPY waiter.sh /bin
ENTRYPOINT ["ffmpeg"]
