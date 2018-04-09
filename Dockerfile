FROM nginx:latest

## Add the default configuration for Angular app
COPY default.conf /etc/nginx/conf.d/

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

## Copy the dist result
COPY BatlPlatform/dist /usr/share/nginx/html