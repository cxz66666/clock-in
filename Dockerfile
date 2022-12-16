FROM registry.cn-hangzhou.aliyuncs.com/raynor/python3.8:latest

WORKDIR /app
RUN apt-get update && apt-get install libgl1 -y


RUN pip install --no-cache-dir requests datetime schedule ddddocr

COPY . .

RUN  cp /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN  echo 'Asia/Shanghai' > /etc/timezone

CMD [ "python","-u","./main.py" ]
