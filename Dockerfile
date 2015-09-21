FROM debian:7

# First part : install & download
## Note: optimization, one same line update and at the end remove apt lists
RUN apt-get -qqy update \
  && apt-get -qqy install -y wget python \
  && rm -rf /var/lib/apt/lists/*


# Get Kibana 3
RUN wget -q --no-check-certificate -O- https://download.elastic.co/kibana/kibana/kibana-3.1.2.tar.gz | tar xvfz - \
  && ln -s kibana-3.1.2 kibana-3

# Expose port and volume
EXPOSE 9090

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT /start.sh

