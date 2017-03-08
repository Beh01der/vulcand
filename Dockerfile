FROM golang:1.7.5-wheezy

ADD ./ /go/src/github.com/vulcand/vulcand/

RUN go get && go install

EXPOSE 8181 8182

ENTRYPOINT ["/go/bin/vulcand"]
