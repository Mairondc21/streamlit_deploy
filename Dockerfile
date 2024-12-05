FROM python:3.11-slim

RUN pip install poetry

RUN poetry install

COPY ./app.py /app/app.py

WORKDIR /app

ENTRYPOINT [ "poetry","run","streamlit","run","app.py" ]