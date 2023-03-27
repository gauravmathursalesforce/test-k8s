FROM node:18-alpine AS deps

ENV PORT 3000

# Create app directory
RUN mkdir /app
WORKDIR /app

RUN rm -rf .next*
# Installing dependencies
COPY package*.json /app/
RUN npm install

# Copying source files
COPY . /app/


# Building app
RUN npm run build
EXPOSE 3000

# Running the app
CMD "npm" "run" "start_prod"