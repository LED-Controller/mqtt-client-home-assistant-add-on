# LED-CON MQTT Client
## Konfigurationsmöglichkeiten
### Pflichtfelder
Die folgenden Einstellungen müssen vor start der Anwendung ausgefüllt werden:
- backend_password: ""
- mqtt_user: ""
- mqtt_password: ""
- mqtt_ip: ""

Die mqtt-ip ist bei verwendung des Mosquitto brockers die gleich wie in der Home Assistant url steht.

### Optionale Felder
Die folgenden Einstellungen können bei Bedarf angepasst werden. Diese Einstellungen werden wie folgt initialisiert: 
- backend_ip: "host.docker.internal"
- backend_port: 8080
- mqtt_port: 1883
- mqtt_topic: "homeassistant/light/"
- mqtt_keepalive: 0 
