
FROM python:3.9.19-slim-bookworm

WORKDIR /app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y nginx --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip && pip install poetry==1.8.3
COPY ./poetry.lock \
    ./pyproject.toml \
    ./
RUN poetry config virtualenvs.create false && \
    poetry install --only main --no-interaction --no-ansi

COPY entrypoint.sh \
    supervisord.conf \
    ./

#EXPOSE 80

CMD ["/bin/sh", "/app/entrypoint.sh"]

