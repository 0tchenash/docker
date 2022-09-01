FROM python:3.9-slim

ENV HOME /app
WORKDIR /app

COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

COPY . .
# COPY app.py . 
# COPY entrypoint.sh .
CMD [ "sh", "entrypoint.sh" ]