FROM alpine:3.20

ARG USERNAME
ARG PASSWORD

RUN apk add ttyd

EXPOSE 8080

CMD ["sh", "-c", "ttyd -W -p 8080 -c $USERNAME:$PASSWORD sh"]
