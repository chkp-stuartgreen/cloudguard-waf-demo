FROM ubuntu:20.04 as nginx-reverse-proxy
ARG token
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install curl nginx -y
RUN rm /etc/rc3.d/*
RUN rm /etc/init.d/nginx
COPY default /etc/nginx/sites-available/default
COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /root/entry.sh
RUN chmod +x /root/entry.sh
RUN mkdir /etc/init
RUN curl https://sc1.checkpoint.com/nanoegg/cp-nano-egg -o /root/nanoegg
RUN chmod +x /root/nanoegg
RUN /root/nanoegg --install --token $token
ENTRYPOINT /root/entry.sh
