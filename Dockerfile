FROM python:3.10-slim-bullseye

LABEL version="python-3.10"

WORKDIR /code

COPY ./requirements.txt ./

RUN : \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && :

CMD ["python3"]
