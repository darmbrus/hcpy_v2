FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt ./

RUN apt-get update && \
  apt-get install -y --no-install-recommends curl tar gcc jq python3-dev libxml2-dev libxslt-dev && \
  pip3 install -r requirements.txt && \
  apt-get remove -y gcc python3-dev

COPY hc2mqtt.py hc-login.py HADiscovery.py HCDevice.py HCSocket.py HCxml2json.py discovery.yaml ./


CMD ["python3", "./hc2mqtt.py"]
