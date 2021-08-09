#FROM        golang
#EXPOSE      8080
#RUN         mkdir /go/src/login
#WORKDIR     /go/src/login
#COPY        . .
#RUN         go mod init
#RUN         go mod download github.com/dgrijalva/jwt-go
#RUN         go mod github.com/labstack/echo
#RUN         go mod github.com/labstack/echo/middleware
#RUN         go mod github.com/labstack/gommon/log
#RUN         go mod github.com/openzipkin/zipkin-go
#RUN         go mod github.com/openzipkin/zipkin-go/middleware/http
#RUN         go mod github.com/openzipkin/zipkin-go/reporter/http
#RUN         go build
#CMD         ["./login"]


FROM        golang:alpine
RUN         mkdir -p /go
WORKDIR     /go/login
COPY        / .
RUN         go mod init example.com/login
RUN         go get
RUN         go build
EXPOSE      8080
CMD         ["./login"]