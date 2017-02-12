FROM aarch64/alpine:3.5
MAINTAINER pjpires@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk upgrade --update-cache; \
    apk add openjdk8-jre; \
    rm -rf /tmp/* /var/cache/apk/*

CMD ["java", "-version"]
