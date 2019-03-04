# metricbeat_rabbitmq
POC using MetricBeat and Filebeat with RabbitMQ

# Setup
Metricbeat and Filebeat configuration files must be owned by root and have sane permissionss e.g. 644
```
sudo chown root ./metricbeat/metricbeat.yml
sudo chown root ./filebeat/filebeat.yml 
```

# Startup
```
docker-compose up -d 
```

# Run RabbitMQ the performance test
```
docker-compose run --rm perf-test 
```

# Install the default Kibana dashboards (if the install fails on startup)
```
chmod +x setupdashboards.sh
./setupdashboards.sh
```

# Testing Elastalert rules
```
#start a shell into the running elastalert container
docker-compose exec elastalert sh


cd /opt/elastalert

#test the rule from the mounted rules volume
elastalert-test-rule  --alert ./rules/Rabbitmq_node_disk_space_LT_500MB.yaml
```

