FROM dil001/ubuntu-slim-arm64:0.6

ARG VERSION=8u121
ARG BUILD=b13
ARG KEY=e9e7ea248e2c4826b92b3f075a80e441

ENV BASE_URL_8=http://download.oracle.com/otn-pub/java/jdk/$VERSION-$BUILD/$KEY/jdk-$VERSION-linux-arm64-vfp-hflt.tar.gz

RUN apt-get update && apt-get  upgrade -y && apt-get install wget -y && \
    cd /opt && \	
    wget -c -O "jdk.tar.gz" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "${BASE_URL_8}" && \
    tar -xvzf jdk.tar.gz && \
    rm jdk.tar.gz && \
    mv $(ls) jdk && \ 
    mv jdk/jre /opt/jre && \
    rm -rf /opt/jdk && \
    apt-get purge wget -y && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt	

ENV PATH "$PATH:/opt/jre/bin"
ENV JAVA_HOME "/opt/jre"
ENV JAVA_JCE "standard"
