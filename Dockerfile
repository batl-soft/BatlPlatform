FROM nginx:1.13.11-alpine

RUN  rm -rf /usr/share/nginx/html/*

COPY dist/ /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf