FROM node:20-alpine
WORKDIR /greg
COPY . .
RUN yarn install
CMD ["node", "src/index.js"]
EXPOSE 3000
