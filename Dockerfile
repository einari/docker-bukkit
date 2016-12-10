FROM openjdk:7 
MAINTAINER Einar Ingebrigtsen <einar@dolittle.com>
RUN mkdir /minecraft-workspace /minecraft /data
WORKDIR /data

ADD craftbukkit-1.11.jar /minecraft
ADD start-minecraft.sh /root/start-minecraft.sh
ADD ./plugins/ /minecraft-workspace/

EXPOSE 25565
ENTRYPOINT ["/bin/bash", "/root/start-minecraft.sh"]