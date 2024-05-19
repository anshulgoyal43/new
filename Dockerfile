FROM python:3.12.3

WORKDIR /app

RUN apt-get update && apt-get install libgl1 -y

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]

