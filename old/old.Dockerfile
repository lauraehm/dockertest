FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY dockertest .

RUN python manage.py migrate 

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]