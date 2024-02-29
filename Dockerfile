FROM shshshhj/ultroid6:main

ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY . .
WORKDIR /root/TeamUltroid/

CMD ./bypss
