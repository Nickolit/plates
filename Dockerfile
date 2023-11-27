FROM ubuntu:20.04 as builder

RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt update  && \
    apt install -y tzdata && \
    apt install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3 && \
    apt clean
    
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter

ENV PATH="/usr/local/flutter/bin:/usr/local.flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter doctor

RUN flutter channel master && \
    flutter upgrade && \
    flutter config --enable-web

WORKDIR /app/
COPY . .
RUN flutter build web

#--------------
FROM nginx:latest as runner

COPY --from=builder /app/build/web/. /usr/share/nginx/html/

EXPOSE 80
