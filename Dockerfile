FROM xandout/es22

MAINTAINER Mitchell Turner
LABEL description="ElasticSearch 2.2 with elasticsearch-HQ and mapper-attachments"
RUN ./bin/plugin remove hq
RUN ./bin/plugin remove mapper-attachments
RUN ./bin/plugin install royrusso/elasticsearch-HQ
RUN ./bin/plugin install https://download.elastic.co/elasticsearch/release/org/elasticsearch/plugin/mapper-attachments/2.2.2/mapper-attachments-2.2.2.zip
EXPOSE 9200 9300

CMD ["elasticsearch", "-Des.cluster.name=elasticTconnect"]
