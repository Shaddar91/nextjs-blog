FROM shaddar/node:17.8.0

WORKDIR /var/app/
COPY . .
RUN npm install
EXPOSE 3000

CMD [ "npm", "start" ]
