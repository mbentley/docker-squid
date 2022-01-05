# rebased/repackaged base image that only updates existing packages
FROM mbentley/alpine:latest
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"

RUN apk add --no-cache squid

EXPOSE 3128/tcp
VOLUME ["/var/log/squid"]
CMD ["/usr/sbin/squid","-f","/etc/squid/squid.conf","-NYCd","1"]
