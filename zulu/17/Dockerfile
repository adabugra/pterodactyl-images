FROM        azul/zulu-openjdk-alpine:17-latest

RUN         apk add --no-cache libstdc++

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
