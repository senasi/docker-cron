FROM alpine:3.11.2

RUN apk add --no-cache curl gawk jq && \
    echo "" > /etc/crontabs/root

COPY fetch.sh /

RUN chmod 755 /fetch.sh

CMD /usr/sbin/crond -f -d8
