FROM python:3.8

WORKDIR /app
RUN apt-get update && apt-get install libgl1


RUN pip install --no-cache-dir requests datetime schedule ddddocr

COPY . .

CMD [ "python", "./main.py" ]
