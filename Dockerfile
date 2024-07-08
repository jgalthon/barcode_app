FROM node:20-alpine

COPY package*.json /app/

COPY ./ /app/

WORKDIR /app

RUN npm install

RUN npm install -g @ionic/cli@7.2.0 @angular/cli@17.3.8

# Expose the port the app runs on
EXPOSE 8100

# Command to run your app
CMD ["ionic", "serve", "--host=0.0.0.0"]
