FROM alpine:3.11.2

RUN apk add --no-cache curl gawk jq && \
    echo "" > /etc/crontabs/root

CMD /usr/sbin/crond -f -d8
