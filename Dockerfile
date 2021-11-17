FROM alpine:latest
RUN apk add bash
COPY tradr.sh /
CMD ["bash", "tradr.sh"]
