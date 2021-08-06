FROM        golang
COPY        . ./login
WORKDIR     /login
RUN         go build
CMD         [ "/login/login" ]