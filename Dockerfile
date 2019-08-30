FROM alpine:3.10
RUN  wget -q https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_linux_amd64.zip && \
     unzip -q packer_1.4.3_linux_amd64.zip && \
     rm packer_1.4.3_linux_amd64.zip
