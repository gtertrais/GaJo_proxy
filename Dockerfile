FROM nginx:1.16.0-alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY ./keys/fullchain.pem /etc/nginx/certs/fullchain.pem
COPY ./keys/privkey.pem /etc/nginx/certs/privkey.pem
COPY ./pwd/pw_file /etc/nginx/pw_file
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]