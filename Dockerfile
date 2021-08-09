#FROM        golang
#EXPOSE      8080
#RUN         mkdir /go/src/login
#WORKDIR     /go/src/login
#COPY        . .
#RUN         go mod init
#RUN         go mod download github.com/dgrijalva/jwt-go
#RUN         go build
#CMD         ["./login"]

FROM golang:1.9-alpine

EXPOSE 8081

WORKDIR /go/src/app
RUN apk --no-cache add curl git && \
    curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh

COPY . .
RUN dep ensure

RUN go build -o login

CMD /go/src/app/login
