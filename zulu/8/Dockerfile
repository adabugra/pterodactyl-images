FROM        --platform=$TARGETOS/$TARGETARCH azul/zulu-openjdk-alpine:8-latest

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]