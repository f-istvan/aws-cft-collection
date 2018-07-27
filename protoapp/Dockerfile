FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
	gnupg2 \
	curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get update && apt-get install -y \
    nodejs

RUN mkdir proto_rest_api_app
WORKDIR proto_rest_api_app
ADD db.json db.json
RUN npm install -g json-server

ENTRYPOINT json-server --watch db.json --host 0.0.0.0
CMD []



# docker build -t restprotoapp:latest .
# docker run -p 8080:3000 restprotoapp:latest
# curl http://localhost:8080/posts
# docker kill $(docker ps -q)