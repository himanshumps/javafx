FROM ubuntu:latest

WORKDIR /deployments
USER root
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
ENV JAVAFX_VERSION=21.0.7
RUN wget -q https://download2.gluonhq.com/openjfx/${JAVAFX_VERSION}/openjfx-${JAVAFX_VERSION}_linux-x64_bin-sdk.zip && pwd && ls-altr
