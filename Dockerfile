FROM alpine:3.20

RUN apk add wget && \
    apk add ttyd

EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug

CMD ["/bin/bash", "-c", "ttyd -p $PORT -c $USERNAME:$PASSWORD /bin/bash"]
