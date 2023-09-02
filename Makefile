install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
run:
	streamlit run app/main.py

format:
	black *.py

docker-build:
	docker build -t streamlit-app .

docker-run:
	docker run --name streamlit-app -d -p 80:80 streamlit-app