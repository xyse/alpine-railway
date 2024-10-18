FROM alpine:3.20

RUN apk add wget bash ttyd

EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug

CMD ["sh", "-c", "ttyd -W -p $PORT -c $USERNAME:$PASSWORD sh"]
