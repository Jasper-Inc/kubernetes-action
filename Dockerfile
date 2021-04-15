FROM alpine:3.11

ARG KUBECTL_VERSION="1.14.6"

RUN apk add py-pip curl
RUN pip install awscli==1.19.50
RUN curl -L -o /usr/bin/kubectl https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
