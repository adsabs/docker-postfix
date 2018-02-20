FROM phusion/baseimage

RUN 	apt-get update && \
	apt-get -y upgrade && \
	apt-get install -y postfix && \
	rm -rf /var/lib/apt/lists/*

ADD run-postfix.sh /etc/service/app/run

RUN mkdir -p /var/spool/postfix/etc/

ADD resolv.conf  /var/spool/postfix/etc/resolv.conf

ENTRYPOINT ["/sbin/my_init"]
