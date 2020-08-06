FROM treehouses/alpine:latest

ENV VNC_PORT=5901 \
    NOVNC_PORT=6080 \
    NOVNC_HOME=/home/noVNC \
    GET_HOST="ip route | awk '/default/ { print \$3 }'"

RUN apk update && apk add --no-cache git python2 procps && \
    mkdir -p $NOVNC_HOME && \
    wget -qO- https://github.com/novnc/noVNC/archive/v1.2.0.tar.gz | tar xz --strip 1 -C $NOVNC_HOME && \
    chmod +x $NOVNC_HOME/utils/*.sh

EXPOSE $VNC_PORT $NOVNC_PORT

CMD HOST_IP=$(eval $GET_HOST);$NOVNC_HOME/utils/launch.sh --vnc $HOST_IP:5901
