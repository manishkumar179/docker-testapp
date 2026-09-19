

FROM node

ENV MONGO_DB_USERNAME=***** \
    MONGO_DB_PWD=*****

RUN mkdir -p docker-testapp

COPY . /docker-testapp

CMD ["node", "/docker-testapp/server.js"]



