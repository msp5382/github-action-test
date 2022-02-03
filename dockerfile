FROM node:17-alpine

WORKDIR /app
COPY . .

RUN cd frontend && npm install && npm run build

WORKDIR /app/frontend

EXPOSE 3000

CMD ["npm", "start"]