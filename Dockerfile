FROM python:3.11-slim

COPY . /app

WORKDIR /app

RUN pip install --upgrade pip && pip install -r requirements.txt

CMD ["streamlit", "run", "main.py", "--server.port", "80"]
