FROM node:14.17.5
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8282
RUN chmod +x . /entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]  