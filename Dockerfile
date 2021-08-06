FROM        golang
RUN         mkdir /login
WORKDIR     /go/src/login
COPY        . .

##RUN         go get github.com/dgrijalva/jwt-go
#RUN         go get github.com/labstack/echo
#RUN         go get github.com/labstack/echo/middleware
#RUN         go get github.com/labstack/gommon/log
#RUN         go get github.com/openzipkin/zipkin-go
#RUN         go get github.com/openzipkin/zipkin-go/middleware/http
#RUN         go get github.com/openzipkin/zipkin-go/reporter/http
RUN         go build
CMD         [ "/login" ]
EXPOSE      8080


#FROM golang:1.16

#WORKDIR /go/src/app
#COPY . .

#RUN go get -d -v ./...
#RUN go install -v ./...

#CMD ["app"]