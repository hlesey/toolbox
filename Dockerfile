FROM centos:latest

ENV GOLANG_VERSION 1.11.3
ENV KUBE_VERSION v1.13.4

RUN yum -y install \ 
    nmap telnet bind-utils \
    curl wget vim iperf tcpdump \
    git mtr traceroute 
RUN wget -qO- https://dl.google.com/go/go${GOLANG_VERSION}.linux-amd64.tar.gz | tar -xvz -C /usr/local/
RUN echo "PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -O /usr/bin/kubectl
RUN chmod +x /usr/bin/kubectl

# ENTRYPOINT [""]
# CMD [""]
