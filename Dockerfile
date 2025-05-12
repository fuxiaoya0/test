FROM nginx:1.27.5-alpine-slim as test

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

FROM nginx:1.27.5-alpine-slim as final

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]