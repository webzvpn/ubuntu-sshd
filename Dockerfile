FROM       ubuntu:latest
MAINTAINER Aleksandar Diklic "https://github.com/rastasheep"

RUN apt-get update

RUN apt-get install -y openssh-server pwgen
RUN mkdir /var/run/sshd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
