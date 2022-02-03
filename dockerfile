FROM node:17-alpine

WORKDIR /app
COPY . .

RUN cd frontend && npm install && npm run build

CMD ["ls"]