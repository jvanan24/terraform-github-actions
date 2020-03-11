FROM alpine:3 

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh"]

COPY ["src", "/src/"]

RUN ["mv", "/src/config", "/github/home/.ssh/"]

ENTRYPOINT ["/src/main.sh"]
