FROM node:16.17-alpine3.15
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
ENV TMDB_API_KEY="xyz"
ENV PORT=3000
EXPOSE $PORT
ENTRYPOINT ["yarn", "run"]
CMD ["dev"]
