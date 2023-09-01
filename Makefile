install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

docker-build:
	docker build -t streamlit-app .

docker-run:
	docker run -d -i -p 80:80 -t streamlit-app streamlit-app