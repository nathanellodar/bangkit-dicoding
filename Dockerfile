FROM node:16
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=8080
ENV MODEL_URL="https://console.cloud.google.com/storage/browser/penerapan-ml"
ENV PROJECT_ID="belajar-penerapan-ml-443607"

CMD [ "npm", "start" ]

EXPOSE 8080
