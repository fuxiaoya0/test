FROM nginx:1.27.5-alpine-slim as test

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

FROM nginx:1.27.5-alpine-slim as final

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]