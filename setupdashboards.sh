#!/bin/bash
#metricbeat dashboards
docker-compose -f docker-compose.yml run --rm  metricbeat setup --dashboards -E setup.kibana.host=kibana:5601 -E output.elasticsearch.hosts=["elasticsearch:9200"]
#filebeat dashboards
docker-compose -f docker-compose.yml run --rm  filebeat setup --dashboards -E setup.kibana.host=kibana:5601 -E output.elasticsearch.hosts=["elasticsearch:9200"]
