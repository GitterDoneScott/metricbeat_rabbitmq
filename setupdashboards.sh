#!/bin/bash
docker-compose -f docker-compose.yml run metricbeat setup --dashboards -E setup.kibana.host=kibana:5601 -E output.elasticsearch.hosts=["elasticsearch:9200"]
