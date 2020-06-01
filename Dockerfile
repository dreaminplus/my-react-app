FROM node

COPY . .

ping registry.npmjs.org
RUN npm config list
RUN npm install -g http-server --verbose

CMD ["http-server ."]

