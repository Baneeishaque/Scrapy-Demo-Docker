FROM python:2.7.15-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "scrapy runspider", "test_spider.py" ]