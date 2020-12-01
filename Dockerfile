FROM python:3.8-alpine

WORKDIR /app

COPY . .

RUN pip3 install flask

CMD [ "python", "index.py" ]
