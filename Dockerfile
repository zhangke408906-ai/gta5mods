FROM node:22-alpine

RUN apk add --no-cache unzip

WORKDIR /app
COPY app.zip /tmp/app.zip
RUN unzip -q /tmp/app.zip -d /app && rm -f /tmp/app.zip

ENV NODE_ENV=production \
    PORT=7860
EXPOSE 7860

CMD ["node", "server.mjs"]
