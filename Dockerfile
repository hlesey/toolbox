FROM centos:latest

RUN yum -y install nmap telnet bind-utils \
           curl wget vim iperf tcpdump git
RUN wget https://dl.google.com/go/go1.11.3.linux-amd64.tar.gz
RUN tar -C /usr/local/ -xzf  go1.11.3.linux-amd64.tar.gz
RUN echo "PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc

ENTRYPOINT ["/usr/bin/bash"]
CMD ["-c", "sleep infinity"]
