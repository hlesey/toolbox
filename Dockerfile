FROM debian:bookworm-slim

RUN apt-get update 

RUN apt-get install -y \ 
    nmap telnet curl wget vim dnsutils iperf tcpdump \
    git mtr traceroute

RUN rm -rf /var/lib/apt/lists/*

CMD ["/bin/sleep", "infinity"]
