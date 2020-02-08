FROM alpine:3.11

RUN apk add --no-cache miniupnpc

ENTRYPOINT ["/usr/bin/upnpc"]
CMD ["-s"]
