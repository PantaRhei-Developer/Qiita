ARG _TAG='20.5-buster'
FROM node:${_TAG}

RUN apt update \
    && apt install -y \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/app
COPY ./package.json /usr/app/package.json
RUN npm install

COPY . /usr/app/

CMD ["npx", "qiita", "init"]