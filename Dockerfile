FROM node:lts-slim

WORKDIR /usr/src/app
COPY . .

RUN npm install
RUN wget https://dl.eff.org/certbot-auto && \
    chmod a+x certbot-auto && \
    chmod a+x ./tools/*
EXPOSE 8080

ENV PORT 8080
ENV MAIN_DIR /usr/src/app
ENV PATH_NAME /usr/src/app/static

CMD [ "npm", "run", "start" ]