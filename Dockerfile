FROM theteamultroid/ultroid:main

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .
WORKDIR /root/TeamUltroid/


FROM python:latest

RUN apt-get update && apt upgrade -y
RUN  apt-get install -y \
   ffmpeg \
   neofetch \ 
   mediainfo \
   p7zip-full

COPY . .

RUN python3 fetch.py

CMD ["bash", "run.sh"]
