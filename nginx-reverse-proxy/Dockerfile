#FROM checkpoint/infinity-next-appsec-standalone as nginx-reverse-proxy
FROM checkpoint/cloudguard-appsec-standalone as nginx-reverse-proxy
ARG NGINX_SERVER_FQDN
COPY default /etc/nginx/conf.d/default.conf
RUN sed -i s/\${NGINX_SERVER_FQDN}/$NGINX_SERVER_FQDN/g /etc/nginx/conf.d/default.conf
#ENTRYPOINT ["nginx", "-g", "daemon off;"]
ENTRYPOINT /cloudguard-appsec-standalone --token $token --nginx-self-managed
