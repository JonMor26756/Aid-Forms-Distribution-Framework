FROM	debian:8.0

RUN	apt update &&\
	apt install -y openssh-client

CMD	ssh-keygen -q -t rsa -N '' -f /ssh-keys/id_rsa
