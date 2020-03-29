from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.chrome.options import Options

from mongoclass import mongodb

import json

import time

opt = Options()
opt.add_argument('start-maximized')

driver = webdriver.Chrome(options=opt)
driver.get('https://www.mvideo.ru/')

assert "М.Видео" in driver.title

#button = driver.find_elements_by_xpath('//a[@class="next-btn sel-hits-button-next"]')[1]
while True:
    try:
        bt = WebDriverWait(driver, 2).until(
            EC.presence_of_element_located((By.CSS_SELECTOR, '.accessories-new .sel-hits-button-next'))
        )
        bt.click()

        if 'disabled' in bt.get_attribute('class'):
            break

        time.sleep(0.5)


    except:
        break



hits = driver.find_elements_by_class_name('gallery-list-item')

db = mongodb('db')

for hit in hits:
    item = hit.find_element_by_xpath('//a[@data-product-info]').get_attribute('data-product-info')
    js = json.loads(item)
    db.process_item(js,'hits')
