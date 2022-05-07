FROM python:3.8

WORKDIR /app

RUN pip install --no-cache-dir requests datetime schedule ddddocr

COPY . .

CMD [ "python", "./main.py" ]
