FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
	    ffmpeg \
	    python-mutagen \
	    youtube-dl \
	    wget \
	    && rm -rf /var/lib/apt/lists/*

RUN wget -o /bin ZZ
ENTRYPOINT ["yt2mp3"]
