FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY index.js index.js
RUN npm i
ENTRYPOINT [ "node","index.js" ]