ARG BUILD_FROM
FROM $BUILD_FROM

WORKDIR /app

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV LANG C.UTF-8

RUN apk update && \
apk add --no-cache bash jq python3 py3-pip && \
rm -rf /var/cache/apk/*

RUN pip3 install paho-mqtt==1.6.1
RUN pip3 install requests==2.27.1

COPY run.sh /
COPY src src

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]