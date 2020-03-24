FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl unzip
RUN mkdir /app \
 && curl -fSs "https://forum.ysfhq.com/download/file.php?id=499" > ysflight.zip \
 && unzip ysflight.zip \
 && cp -a Ysflight/ysflight64_gl2.app/Contents/Resources/* /app \
 && rm -r Ysflight ysflight.zip
WORKDIR /app
EXPOSE 7915
CMD ./ysflight64_nownd -server Admin
