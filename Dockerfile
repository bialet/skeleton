# Install library dependencies
FROM alpine:latest as base
RUN apk add musl-dev sqlite-dev openssl-dev curl-dev

# Install compilation tools
FROM base as build
RUN apk add gcc make python3
WORKDIR /root
RUN wget https://github.com/bialet/bialet/archive/refs/heads/master.zip -O bialet.zip
RUN unzip bialet.zip
WORKDIR /root/bialet-main
RUN pwd && ls -lht
RUN make clean && make

# Copy bialet binary
FROM base as run
COPY --from=build /root/bialet-main/build/bialet /usr/local/bin/bialet
ENTRYPOINT ["bialet", "-h", "0.0.0.0", "/var/www/"]
