FROM alpine:3.10.1

RUN apk add --no-cache curl && \
    echo "" > /etc/crontabs/root

CMD /usr/sbin/crond -f -d8

