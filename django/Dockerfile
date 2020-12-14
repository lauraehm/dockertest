FROM python:3

RUN apt-get update
# RUN apt-get install -y nginx
# RUN apt-get install -y netcat

WORKDIR /project

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY dockertest/. .

# COPY entrypoint.sh .

# ENTRYPOINT ["sh", "entrypoint.sh"]