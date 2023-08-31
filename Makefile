install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:	
	black *.py 

test:
	python -m pytest -vv --cov=main --cov=mylib test_*.py


all: install lint test format deploy