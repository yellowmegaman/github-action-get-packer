FROM hashicorp/packer:1.4.3

LABEL "com.github.actions.name"="packer action"
LABEL "com.github.actions.description"="packer"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/yellowmegaman/github-action-get-packer"
LABEL "homepage"="https://github.com/yellowmegaman/github-action-get-packer"
LABEL "maintainer"="yellowmegaman <yellowmegaman@gmail.com>"
LABEL "version"="0.0.1"

ENTRYPOINT ["/bin/packer"]
