# First stage: build the application
FROM python:3.7
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py app.py

EXPOSE 5000

CMD ["python3","-m","flask","run","--host=0.0.0.0","--port=5000"]