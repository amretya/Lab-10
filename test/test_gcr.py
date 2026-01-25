import requests

resp = requests.post("https://terraform-test-660449041854.asia-southeast1.run.app", files={'file': open('1.jpg', 'rb')})

print(resp.json())
