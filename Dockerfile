FROM node:16

COPY ["package.json", "yarn.lock", "/code/"]

COPY [".", "/code/"]

RUN corepack enable

WORKDIR /code/

RUN yarn install

EXPOSE 3000

CMD ["yarn", "dev"]