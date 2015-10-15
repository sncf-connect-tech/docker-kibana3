# Minimalist Docker Kibana 3.1.2

Small Kibana 3.1.2 Docker image based on [Docker Alpine](https://hub.docker.com/_/alpine/).

Need to have an Elasticsearch launched locally, [conventionally](https://www.elastic.co/products/elasticsearch) or via [Docker Elasticsearch image](https://hub.docker.com/_/elasticsearch/) - need to expose port 9200. Elasticsearch will be configured to allow access for Kibana 3.

Build:

    docker build -t kibana3 .

Run:

    docker run -d -p 9090:80 kibana3

Kibana 3 will be accessible on this url: [http://localhost:9090/](http://localhost:9090/).