FROM        container-registry.oracle.com/graalvm/jdk:24

RUN         microdnf install -y \
                fontconfig \
                dejavu-sans-fonts \
                libstdc++ \
                argon2 \
                glibc-langpack-tr \
                tzdata \
            && microdnf clean all

ENV         LANG=tr_TR.UTF-8 \
            LANGUAGE=tr_TR:tr \
            LC_ALL=tr_TR.UTF-8 \
            TZ=Europe/Istanbul

RUN         useradd -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/sh", "/entrypoint.sh"]