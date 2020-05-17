FROM centos:latest

ENV GOLANG_VERSION 1.14.1
ENV KUBE_VERSION v1.18.2

RUN dnf -y install \ 
    nmap telnet bind-utils \
    curl wget vim iperf3 tcpdump \
    git mtr traceroute 
RUN wget -qO- https://dl.google.com/go/go${GOLANG_VERSION}.linux-amd64.tar.gz | tar -xvz -C /usr/local/
RUN echo "PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/bin/kubectl
RUN chmod +x /usr/bin/kubectl

ENTRYPOINT ["/usr/bin/bash"]
CMD ["-c", "sleep infinity"]
