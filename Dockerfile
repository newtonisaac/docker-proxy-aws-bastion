FROM alpine:3.16

# install ssh-client and bash
RUN apk --no-cache add openssh-client bash

WORKDIR /code