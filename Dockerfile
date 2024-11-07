FROM  python:3.12.7-slim-bookworm

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir poetry

RUN poetry install

EXPOSE 8080

ENTRYPOINT [ "poetry", "run", "uvicorn", "main:app", "--port", "8080", "--host", "0.0.0.0" ]
