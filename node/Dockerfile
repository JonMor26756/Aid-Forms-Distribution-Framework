FROM	debian:8.0

RUN	apt update &&\
	apt install -y openssh-server



RUN	apt install -y nmap




ADD     config-files/run.sh /

RUN     chmod +x /run.sh

ENTRYPOINT      ["/run.sh"]
