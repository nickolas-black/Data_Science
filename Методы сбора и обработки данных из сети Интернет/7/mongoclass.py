from pymongo import MongoClient

class mongodb(object):
    def __init__(self, db):
        client = MongoClient('localhost',27017)
        self.mongo_base = client[db]
        
    def process_item(self, item, col_name):
        col = self.mongo_base[col_name]
        col.insert_one(item)


if __name__ == "__main__":
    db = mongodb('db')
