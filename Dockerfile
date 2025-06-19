FROM ubuntu:latest
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /deployments
ENV JAVAFX_VERSION=21.0.7
wget -q https://download2.gluonhq.com/openjfx/${JAVAFX_VERSION}/openjfx-${JAVAFX_VERSION}_linux-x64_bin-sdk.zip
