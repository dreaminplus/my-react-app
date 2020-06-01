FROM node

COPY . .

RUN apt-get update
RUN apt-get install iputils-ping -y
RUN ping registry.npmjs.org
RUN npm config list
RUN npm install -g http-server --verbose

CMD ["http-server ."]

