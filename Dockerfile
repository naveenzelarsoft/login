FROM        golang
COPY        . ./login
WORKDIR     /login
RUN         go get
RUN         go build
CMD         [ "/login/login" ]
EXPOSE      8080




## RUN         go mod init example.com/login