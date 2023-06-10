ARG NGINX_VERSION

FROM nginx:${NGINX_VERSION}

LABEL maintainer="Aloïs Micard <a.micard@vold.lu>"

# Setup user for Nginx with ID 1000
RUN adduser --uid 1000 --disabled-password --no-create-home dolibarr

COPY nginx.conf /etc/nginx/nginx.conf