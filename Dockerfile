FROM alpine:3.4

MAINTAINER Ken Smith <ken.smith@rkdn.io>

RUN apk --no-cache add python py-pip groff less && pip --no-cache-dir install awscli && apk del py-pip

ENTRYPOINT ["aws"]
