FROM openjdk:8
MAINTAINER Einar Ingebrigtsen <einar@dolittle.com>
RUN mkdir /minecraft-workspace /minecraft /data
WORKDIR /data

ADD craftbukkit-1.11.2.jar /minecraft
ADD start-minecraft.sh /root/start-minecraft.sh
ADD ./plugins/ /minecraft-workspace/

EXPOSE 25565
ENTRYPOINT ["/bin/bash", "/root/start-minecraft.sh"]