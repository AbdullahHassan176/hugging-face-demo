install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello --cov=greeting \ 
		--cov=smath --cov=web tests
	python -m pytest --nbval notebook.ipynb #tests our jupyter notebook
	#python -m pytest -v tests/test_web.py #test the web

debug:
	python -m pytest -vv --pdb #invoke the debugger

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4

all: install lint debug one-test