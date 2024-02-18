FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox curl sudo bash nano wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN echo 'root:ppp111' | chpasswd

EXPOSE 22


CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
