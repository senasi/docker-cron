FROM alpine:3.12.0

RUN apk add --no-cache coreutils curl gawk jq && \
    echo "" > /etc/crontabs/root

COPY fetch.sh /

RUN chmod 755 /fetch.sh

CMD /usr/sbin/crond -f -d8
