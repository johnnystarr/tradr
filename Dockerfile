FROM alpine:latest
RUN apk add bash dialog
COPY tradr.sh /
CMD ["bash", "tradr.sh"]
