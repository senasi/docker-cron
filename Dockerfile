FROM alpine:3.10.1

RUN apk add --no-cache curl gawk jq && \
    echo "" > /etc/crontabs/root

CMD /usr/sbin/crond -f -d8
