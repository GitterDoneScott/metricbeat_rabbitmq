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
