FROM        golang
RUN         mkdir /login
COPY        . /login
WORKDIR     /login
RUN         go get github.com/dgrijalva/jwt-go
RUN         go get github.com/labstack/echo
RUN         go get github.com/labstack/echo/middleware
RUN         go get github.com/labstack/gommon/log
RUN         go build
CMD         [ "/login/login" ]
EXPOSE      8080
