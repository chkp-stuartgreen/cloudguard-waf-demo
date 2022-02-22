FROM checkpoint/infinity-next-nginx as nginx-reverse-proxy
ARG NGINX_SERVER_FQDN
COPY default /etc/nginx/conf.d/default.conf
RUN sed -i s/\${NGINX_SERVER_FQDN}/$NGINX_SERVER_FQDN/g /etc/nginx/conf.d/default.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]
