FROM python:3.14-rc-alpine3.21

RUN apk add --no-cache gcc musl-dev libxml2-dev libxslt-dev libffi-dev

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r dev-requirements.txt \
 && pip install --no-cache-dir -r requirements.txt

CMD [ "scrapy", "runspider", "blog_spider.py" ]