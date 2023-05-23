FROM node:18.0.0-alpine
WORKDIR /app
COPY ./docker-entrypoint.sh ./docker-entrypoint.sh
COPY ./app.js ./app.js
RUN chmod +x ./docker-entrypoint.sh
RUN ls -lsa
ENTRYPOINT ["sh","docker-entrypoint.sh"]
CMD ["node", "app.js"]
