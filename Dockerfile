FROM node:18.12.1
RUN mkdir -p /app
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY app.js /app/
EXPOSE 3000
CMD ["npm","start"]