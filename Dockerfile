FROM alpine:3.7

RUN apk add --no-cache miniupnpc bash

COPY resources/upnpc.sh /usr/local/sbin/
RUN chmod +x /usr/local/sbin/upnpc.sh

ENV NAT_PORTS="500/udp 4500/udp"

CMD /usr/local/sbin/upnpc.sh