FROM node:13.3.0-alpine

WORKDIR /app
COPY ./frontend .

RUN npm install && npm run build

CMD ["npm", "run", "start"]