FROM alpine:3.20

RUN apk add wget bash ttyd

EXPOSE $PORT
RUN echo $CREDENTIAL > /tmp/debug

CMD ["/bin/bash", "-c", "/bin/ttyd -p $PORT -c $USERNAME:$PASSWORD /bin/bash"]
