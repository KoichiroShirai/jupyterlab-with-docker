FROM python:3.9.13-slim-bullseye

WORKDIR /
COPY requirements.txt .
RUN pip3 install --no-cache-dir --upgrade pip==22.2.2 && \
    pip3 install --no-cache-dir -requirement requirements.txt

WORKDIR /src
COPY /src /src
