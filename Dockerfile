FROM        golang
RUN         mkdir /login
COPY        . ./login
WORKDIR     /login
RUN         ls
RUN         go get github.com/dgrijalva/jwt-go && go get github.com/labstack/echo && go get github.com/labstack/echo/middleware && go get github.com/labstack/gommon/log && go get github.com/openzipkin/zipkin-go && go get github.com/openzipkin/zipkin-go/middleware/http && go get github.com/openzipkin/zipkin-go/reporter/http
RUN         go build main.go
CMD         [ "/login/login" ]
EXPOSE      8080
