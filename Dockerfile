FROM alpine

RUN apk add --update curl bash xz

ADD ./Fedora-2-raw /scripts/Fedora-2-raw
RUN chmod +x /scripts/Fedora-2-raw

WORKDIR /scratch
VOLUME /target

CMD ["/scripts/Fedora-2-raw"]
