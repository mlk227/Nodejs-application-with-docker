FROM alpine:latest
RUN apk add --no-cache nodejs npm


WORKDIR /app

# copying files into the app dir
COPY . /app


RUN npm install


EXPOSE 9005


ENTRYPOINT ["node"]

CMD ["server.js"]
