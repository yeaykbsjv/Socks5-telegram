FROM alpine:latest

RUN apk add --no-cache git make gcc musl-dev

RUN git clone https://github.com/rofl0r/microsocks.git /microsocks && \
    cd /microsocks && \
    make

COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 1080

CMD ["/start.sh"]
