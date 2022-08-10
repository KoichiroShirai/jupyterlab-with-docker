FROM python:3.9.13-slim-bullseye

RUN apt-get update && \
    apt-get install --no-install-recommends -y locales=2.31-13+deb11u3 && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
ENV LANG ja_JP.UTF-8 && \
    LANGUAGE ja_JP:ja && \
    LC_All ja_JP.UTF-8 && \
    TZ JST-9

# hadolint ignore=DL3008
RUN apt-get update && \
    apt-get install --no-install-recommends -y fonts-noto-cjk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /
COPY requirements.txt .
RUN pip3 install --no-cache-dir --upgrade pip==22.2.2 && \
    pip3 install --no-cache-dir -r requirements.txt

WORKDIR /src
COPY /src /src
