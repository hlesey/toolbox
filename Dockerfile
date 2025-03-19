FROM debian:bookworm-slim

RUN apt-get update 

RUN apt-get install -y \ 
    nmap telnet curl wget vim dnsutils iperf tcpdump \
    netcat-openbsd iproute2 iputils-ping net-tools htop procps \
    socat openssl jq python3 python3-pip unzip zip \
    postgresql-client \
    git mtr traceroute
RUN rm -rf /var/lib/apt/lists/*

CMD ["/bin/sleep", "infinity"]
