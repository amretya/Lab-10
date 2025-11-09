import requests

resp = requests.post("https://terraform-test-nyluz5gvmq-as.a.run.app", files={'file': open('1.jpg', 'rb')})

print(resp.json())
