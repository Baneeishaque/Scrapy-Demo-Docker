FROM python:3.14.0a1-slim

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r dev-requirements.txt \
 && pip install --no-cache-dir -r requirements.txt

CMD [ "scrapy", "runspider", "blog_spider.py" ]