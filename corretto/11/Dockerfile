FROM        amazoncorretto:11-alpine-jdk

RUN         apk add --no-cache libstdc++ fontconfig ttf-dejavu

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
