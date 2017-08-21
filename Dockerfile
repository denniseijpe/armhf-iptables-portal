FROM container4armhf/armhf-alpine:latest-stable

MAINTAINER Dennis Eijpe

RUN apk --no-cache add iptables

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
