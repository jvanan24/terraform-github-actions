FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

COPY ["src", "/src/"]

RUN ["mv", "/src/config", "/home/github/.ssh/"]

ENTRYPOINT ["/src/main.sh"]
