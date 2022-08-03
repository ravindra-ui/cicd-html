FROM alpine

# Install Node and NPM

RUN npm install -g http-server

# Copy app to /src
COPY . /src

WORKDIR /src

EXPOSE 8080

ENTRYPOINT ["http-server", "-p", "8080"]
