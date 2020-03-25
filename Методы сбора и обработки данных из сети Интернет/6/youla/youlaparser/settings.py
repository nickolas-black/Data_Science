# -*- coding: utf-8 -*-

BOT_NAME = 'youlaparser'

SPIDER_MODULES = ['youlaparser.spiders']
NEWSPIDER_MODULE = 'youlaparser.spiders'

LOG_ENABLED = True
LOG_LEVEL = 'DEBUG'

IMAGES_STORE = 'images'

USER_AGENT = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.87 Chrome/80.0.3987.87 Safari/537.36'

ROBOTSTXT_OBEY = False
CONCURRENT_REQUESTS = 8
DOWNLOAD_DELAY = 3

CONCURRENT_REQUESTS_PER_DOMAIN = 8
CONCURRENT_REQUESTS_PER_IP = 8


COOKIES_ENABLED = False

ITEM_PIPELINES = {
   'youlaparser.pipelines.YoulaparserPipeline': 300,
   'youlaparser.pipelines.YoulaImagesPipeline': 100,
}

