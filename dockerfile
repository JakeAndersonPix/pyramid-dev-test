FROM python:3.6

COPY . /app

WORKDIR /app

EXPOSE 6543

RUN pip install -e .

ENTRYPOINT pserve --reload dev.ini
