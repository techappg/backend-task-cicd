FROM python:3
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . .

RUN python manage.py migrate
EXPOSE 2158
CMD ["python", "manage.py", "runserver", "0.0.0.0:2158"]

