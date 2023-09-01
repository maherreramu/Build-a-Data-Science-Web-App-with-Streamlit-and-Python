FROM python:3.11-slim

COPY app .
COPY . /app

WORKDIR /app

RUN make install

CMD ["streamlit", "run", "main.py", "--server.port", "80"]
