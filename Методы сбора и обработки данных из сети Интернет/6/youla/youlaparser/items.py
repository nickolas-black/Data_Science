# -*- coding: utf-8 -*-
import scrapy


class YoulaparserItem(scrapy.Item):
    # define the fields for your item here like:
    _id = scrapy.Field()
    title = scrapy.Field()
    link = scrapy.Field()
    images = scrapy.Field()
