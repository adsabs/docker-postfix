FROM phusion/baseimage

RUN 	apt-get update && \
	apt-get -y upgrade && \
	apt-get install -y postfix && \
	rm -rf /var/lib/apt/lists/*

ADD run-postfix.sh /etc/service/app/run

ENTRYPOINT ["/sbin/my_init"]
