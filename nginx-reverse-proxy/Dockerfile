FROM checkpoint/infinity-next-nginx as nginx-reverse-proxy
COPY default /etc/nginx/conf.d/default.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]
