FROM python:3.11-slim

RUN pip install poetry

COPY . /app/app.py

WORKDIR /app/app.py

RUN poetry install

EXPOSE 8501

ENTRYPOINT ["poetry","run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]