FROM        amazoncorretto:8-alpine-jre

RUN         apk add --no-cache libstdc++ fontconfig ttf-dejavu argon2-libs

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
