import os
import requests

BACKEND_IP = os.environ["backend_ip"]
BACKEND_PORT = int(os.environ["backend_port"])
BACKEND_PASSWORD = os.environ["backend_password"]

REST_URL = "http://" + BACKEND_IP + ":" + str(BACKEND_PORT)
Password = {"password": BACKEND_PASSWORD}


def authenticate():
        token = requests.post(REST_URL+"/login", json=Password)
        header = {'Authorization': 'Bearer ' + token.json()['token']}
        print("Verbindung mit Backend erfolgreich")
        return header

def getlamps(header):
        response = requests.get(REST_URL+"/lamps", headers=header)
        return response.json()

def updatelamps(header, lamp):
        requests.post(REST_URL + "/update", json=lamp, headers=header)