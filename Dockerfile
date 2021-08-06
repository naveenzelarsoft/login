FROM        golang
RUN         mkdir /go/src/login
WORKDIR     /go/src/login
COPY        . .
RUN         go mod init
RUN         go mod tidy
RUN         go mod download github.com/dgrijalva/jwt-go
#RUN         go mod github.com/labstack/echo
#RUN         go mod github.com/labstack/echo/middleware
#RUN         go mod github.com/labstack/gommon/log
#RUN         go mod github.com/openzipkin/zipkin-go
#RUN         go mod github.com/openzipkin/zipkin-go/middleware/http
#RUN         go mod github.com/openzipkin/zipkin-go/reporter/http
RUN         go build
EXPOSE      8080
CMD          ./login


#FROM golang:1.16

#WORKDIR /go/src/app
#COPY . .

#RUN go get -d -v ./...
#RUN go install -v ./...

#CMD ["app"]
