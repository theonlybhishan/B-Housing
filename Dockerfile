FROM python:3.7
COPY . .
WORKDIR /
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD ["gunicorn","app:app"]