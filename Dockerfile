FROM alpine:3.20

RUN apk add wget ttyd bash

EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug

CMD ["sh", "-c", "ttyd -p $PORT -c $USERNAME:$PASSWORD sh"]
