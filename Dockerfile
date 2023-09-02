FROM python:3.11-slim

COPY app /app
COPY requirements.txt test_main.py /app/

WORKDIR /app

RUN pip install --upgrade pip &&\
		pip install -r requirements.txt

CMD ["streamlit", "run", "main.py", "--server.port", "80"]
