FROM python:3.8.13-slim-buster
WORKDIR /app
COPY ./my_app ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /app/requirements.txt --no-cache-dir

#CMD ["python","manage.py","runserver","0.0.0.0:8000"]
CMD ["gunicorn","main_app.wsgi:application","--bind", "0.0.0.0:8000"]
# stopped at 8:04 in the second video  https://www.youtube.com/watch?v=ZmSlf4xx8dM&list=PLtGXgNsNHqPRIREAxyE47turTLeJMgXf2&index=2