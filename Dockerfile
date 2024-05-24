
FROM python:3.9.19-slim-bookworm

WORKDIR /app

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir poetry==1.8.3

COPY ./poetry.lock \
    ./pyproject.toml \
    ./
RUN poetry config virtualenvs.create false && \
    poetry install --only main --no-interaction --no-ansi

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8080", "-f", "/app/mkdocs/mkdocs.yml"]

