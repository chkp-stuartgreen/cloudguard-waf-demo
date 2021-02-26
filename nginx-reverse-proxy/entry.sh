#!/bin/bash
/etc/init.d/nano_agent start
while [ ! -f /usr/lib/nginx/modules/ngx_cp_attachment_module.so ]; do
  echo "CP module not yet present - waiting..."
  sleep 2
done
echo "Module found, starting NGINX"
nginx -g 'daemon off;'
