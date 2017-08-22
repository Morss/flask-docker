FROM python:3.6-alpine

RUN mkdir -p /opt/web
WORKDIR /opt/web

COPY flaskapp.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=flaskapp.py

EXPOSE 80

ENTRYPOINT ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]
