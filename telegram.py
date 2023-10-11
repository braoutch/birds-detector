import requests
TOKEN = "6063542908:AAHYcvD27LQstloZn7gQ2b-beOz7-octfo8"
url = f"https://api.telegram.org/bot{TOKEN}/getUpdates"
print(requests.get(url).json())

chat_id = "117147754"
message = "Coucou ! bite"

url = f"https://api.telegram.org/bot{TOKEN}/sendMessage?chat_id={chat_id}&text={message}"
print(requests.get(url).json()) # this sends the message