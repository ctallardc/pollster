FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
COPY start-server.sh /code/
RUN chmod +x start-server.sh
RUN pip install -r requirements.txt
COPY pollster /code/
CMD [ "python", "./manage.py","runserver","0.0.0.0:8000" ]