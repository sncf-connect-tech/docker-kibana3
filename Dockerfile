FROM alpine:3.2
RUN apk add --update nginx openssl && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body

RUN wget -O- https://download.elastic.co/kibana/kibana/kibana-3.1.2.tar.gz | tar zxf - \
  && mv /kibana-3.1.2/* /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
