FROM node:13.3.0-alpine

WORKDIR /app
COPY . .

RUN cd frontend && npm install && npm run build

CMD ["npm", "run", "start"]