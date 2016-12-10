FROM openjdk:7 
#ubuntu:trusty
MAINTAINER Einar Ingebrigtsen <einar@dolittle.com>
#RUN apt-get update && apt-get install -y openjdk-7-jdk wget git
RUN mkdir /minecraft-workspace /minecraft /data
WORKDIR /data

ADD craftbukkit-1.11.jar /minecraft
ADD start-minecraft.sh /root/start-minecraft.sh
ADD ./plugins/ /minecraft-workspace/
#ADD ./plugins/Multiverse-Core-2.5.0.jar /minecraft-workspace/Multiverse-Core-2.4.jar
#RUN rm -rf /minecraft-workspace

EXPOSE 25565
ENTRYPOINT ["/bin/bash", "/root/start-minecraft.sh"]