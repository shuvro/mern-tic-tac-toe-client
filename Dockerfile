FROM node:lts-slim
WORKDIR /app
COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock
ENV PATH /app/node_modules/.bin:$PATH
RUN yarn
CMD ["yarn", "serve:dev"]
