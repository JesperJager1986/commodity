FROM python:3

RUN pip install poetry

COPY . .

RUN poetry export --without-hashes --format=requirements.txt > requirements.txt
RUN poetry install
RUN poetry shell

CMD ["python", "-u", "main.py"]