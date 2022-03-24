# LED-CON MQTT Client
Das ist ein Add-On für Home Assistant, um die LED-CON Lösung mittels zusätzlichen MQTT-Brokers an Home Assistant anzubinden.
## Benötigte Tools
- Samba
- MQTT-Broker (Mosquitto Broker, ...)

## Installation
Das Samba Add-On muss in Home Assistant über den Add-on Store installiert und gestartet werden, um einen zugriff auf das Filesystem zu bekommen. 
Danach kann eine Verbindung über den Explorer mittels IP aufgebaut werden. Darin wird das Repository in den Ordner addons Heruntergeladen. Somit sollte das Add-On nach einem neustart des Add-On Stores zu sehen und bereit zur Installation sein.
Anschließend muss nur ein MQTT-Brocker für die Kommunikation aufgesetzt werden (empfohlen wird der Mosquitto Brocker, der schon Standardmäßig im Add-On Store verfügbar ist).
Zum Schluss muss nur noch das Add-On Konfiguriert werden.  

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
