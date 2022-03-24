#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json

export backend_ip="$(bashio::config 'backend_ip')"
export backend_port="$(bashio::config 'backend_port')"
export backend_password="$(bashio::config 'backend_password')"
export mqtt_ip="$(bashio::config 'mqtt_ip')"
export mqtt_port="$(bashio::config 'mqtt_port')"
export mqtt_user="$(bashio::config 'mqtt_user')"
export mqtt_password="$(bashio::config 'mqtt_password')"
export mqtt_topic="$(bashio::config 'mqtt_topic')"
export mqtt_keepalive="$(bashio::config 'mqtt_keepalive')"

# Set backend ip as "host.docker.internal" if not specified in config
if [ $backend_ip == "null" ]; then
    backend_ip="host.docker.internal"
fi

# Set backend port as 8080 if not specified in config
if [ $backend_port == "null" ]; then
    backend_port=8080
fi

# Set mqtt port as 0 if not specified in config
if [ $mqtt_port == "null" ]; then
    mqtt_port=1883
fi

# Set mqtt topic as "homeassistant/light/" if not specified in config
if [ $mqtt_topic == "null" ]; then
    mqtt_topic="homeassistant/light/"
fi

# Set mqtt keepalive as 0 if not specified in config
if [ $mqtt_keepalive == "null" ]; then
    mqtt_keepalive=0
fi

echo "Starting mqtt-client"

python3 main.py