FROM python:3.8-slim

LABEL maintainer="Sebastian Ramirez <tiangolo@gmail.com>"

RUN pip install --no-cache-dir uvicorn gunicorn

COPY ./uvicorn.sh /uvicorn.sh
RUN chmod +x /uvicorn.sh

COPY ./gunicorn_conf.py /gunicorn_conf.py

COPY ./app /app
WORKDIR /app/

ENV PYTHONPATH=/app

EXPOSE 8080

CMD ["/uvicorn.sh"]
