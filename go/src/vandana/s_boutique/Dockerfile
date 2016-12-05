FROM golang:1.7.3-alpine

RUN apk update && apk upgrade && \
  apk -y add git

// creating filestructure
RUN mkdir -p /usr/local
WORKDIR /usr/local 

EXPOSE 8080:8080

CMD ["go-wrapper", "run"]
