FROM docker:19.03

LABEL "com.github.actions.name"="packer action"
LABEL "com.github.actions.description"="packer"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/yellowmegaman/github-action-get-packer"
LABEL "homepage"="https://github.com/yellowmegaman/github-action-get-packer"
LABEL "maintainer"="yellowmegaman <yellowmegaman@gmail.com>"
LABEL "version"="0.0.1"

RUN apk --no-cache add curl && \
    wget https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_linux_amd64.zip -qO /tmp/packer.zip && \
    cd /usr/bin && \
    unzip -jq /tmp/packer.zip && \
    rm /tmp/packer.zip && \
    chmod +x /usr/bin/packer

ENTRYPOINT ["/bin/packer"]
