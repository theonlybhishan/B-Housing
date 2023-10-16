FROM python:3.7
WORKDIR /
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt
EXPOSE 5000
ENV FLASK_APP=my_flask.py
CMD ["flask", "run", "--host", "0.0.0.0"]