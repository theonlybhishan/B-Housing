FROM python:3.7
WORKDIR /
COPY requirements.txt /app/
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app