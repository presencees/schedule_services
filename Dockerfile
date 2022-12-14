FROM node:16.15-alpine3.14
ENV TZ="Asia/Makassar"
RUN mkdir -p /opt/app
WORKDIR /opt/app
# RUN adduser -S app
COPY . .
RUN npm install npm@8.19.2 --location=global
RUN npm install
RUN chown -R node /opt/app
USER node
CMD [ "node", "index.js"]
