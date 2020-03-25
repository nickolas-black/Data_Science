# -*- coding: utf-8 -*-
import scrapy
from pymongo import MongoClient
from scrapy.pipelines.images import ImagesPipeline


class YoulaparserPipeline(object):
    def __init__(self):
        client = MongoClient('localhost', 27017)
        self.db = client['scrapy_youla']

    def process_item(self, item, spider):
        collection = self.db[spider.name]
        collection.insert_one(item)
        return item


class YoulaImagesPipeline(ImagesPipeline):
    def get_media_requests(self, item, info):
        if item['images']:
            for img in item['images']:
                try:
                    yield scrapy.Request(img)
                except Exception as e:
                    print(e)

    def item_completed(self, results, item, info):
        if results:
            item['images'] = [img[1] for img in results if img[0]]
        return item
