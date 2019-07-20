FROM alpine:3.10.1

RUN apk add --no-cache curl

CMD /usr/sbin/crond -f -d8

