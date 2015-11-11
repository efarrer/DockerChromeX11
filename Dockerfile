FROM ubuntu

COPY . /

RUN apt-get update && \
    apt-get install -y wget && \
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    mv /google-chrome.list ./etc/apt/sources.list.d/ && \
    apt-get update && \
    apt-get install -y google-chrome-stable || true
