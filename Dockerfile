FROM        golang
RUN         go mod download

COPY        . ./login
WORKDIR     /login
RUN         go build -o /login
CMD         [ "/login/login" ]
EXPOSE      8080