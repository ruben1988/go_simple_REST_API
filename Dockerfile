# Dockerfile References: https://docs.docker.com/engine/reference/builder/

# Start from the latest golang base image
FROM golang:latest


RUN mkdir /app 
ADD . /app/ 
WORKDIR /app 
RUN go get github.com/gorilla/mux

RUN go build -o main . 

CMD ["/app/main"]