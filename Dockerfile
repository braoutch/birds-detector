FROM balenalib/raspberry-pi-debian-python:latest

WORKDIR /usr/src/app

RUN python3 -m pip install --upgrade pip setuptools wheel
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./cuicuicompute.py" ]