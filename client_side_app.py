import grovepi
import requests
from time import sleep

sensor = 2
blue = 0    
white = 1   
url = "http://192.168.73.179:5000/api"
while True:
        [tempature,humidity] = grovepi.dht(sensor,blue) 
        sleep(120)
        data={
            "D_Humy": humidity,
            "D_Temp": tempature
        }
        response= requests.post(url,json=data)
