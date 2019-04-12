FROM golang:latest 
RUN mkdir /app
RUN go get github.com/gin-gonic/gin
ADD . /app/ 
WORKDIR /app 
RUN go build -o main . 
EXPOSE 8080
CMD ["/app/main"]
