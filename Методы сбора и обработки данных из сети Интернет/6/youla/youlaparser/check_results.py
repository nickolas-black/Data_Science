from pymongo import MongoClient
from pprint import pprint

client = MongoClient('localhost', 27017)
db = client['scrapy_files_DB']

# Let's print 10 results from the both collections

for car in db['youla.auto'].find({})[:10]:
    pprint(car)


# Output example
# {'_id': ObjectId('5e15f91650de9170e6d0cceb'),
#  'images': [{'checksum': '03c25f02d6b1c41348c2b1de1dbb77cd',
#              'path': 'full/b195732502bcfaf3bde29b329369f42c8c673000.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/a/a3/aa35f1227058f8030ce275ab8e593c8f.jpg'},
#             {'checksum': '76059f25374f1bb61e4716a360d68876',
#              'path': 'full/262c7cba648f68dbbb4d86e5e3aee587d3a63059.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/b/d9/bd9de68760f337d404fdcae10ad7a958.jpg'},
#             {'checksum': '39c343dbe37bf3eccaeaae14e6ff910c',
#              'path': 'full/5683e183e38821e31b23614516acc214808b549c.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/c/3c/c3c229f16d8c2fd1661afc2fb3b83f08.jpg'},
#             {'checksum': '9c2db2e41f8f581b309b70dc67ad07bc',
#              'path': 'full/52ec2c76fe664ad60450153cd3442be983c6c8d3.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/2/c6/2c665ac5ddc859ab56c66ef1e8087f45.jpg'},
#             {'checksum': 'e91dbeb2af1a1485650e3ff6e0f094dc',
#              'path': 'full/0f86d1d4381d5b4838a389fc15f63461405453e0.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/6/cb/6cbdda94913024bd5b38435814dd9bdd.jpg'},
#             {'checksum': '358d5fda51a7b62128d51149a35196dc',
#              'path': 'full/d9609500afa8cebd8faa64f5fdcdaadfee76f96b.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/f/ad/fadbf28978ae26990724b7c7d2dfd352.jpg'},
#             {'checksum': 'e66c1cb88c4aa7cfda91a7228bfa5cdf',
#              'path': 'full/4a509f15d3f75b3fdfd24e4ad99257745022b440.jpg',
#              'url': 'https://static.am/automobile_m3/document/l/1/66/166d6b3eb90530f0934893eb2936da94.jpg'}],
