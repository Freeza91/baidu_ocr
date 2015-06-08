require '../lib/baidu_ocr'

# local image
BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'bit.jpg',
                        imagetype: 2)
puts BaiduOcr.recognize

puts '-' * 30

# image from web
BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'https://raw.githubusercontent.com/rudyboy/baidu_ocr/master/examples/bit.jpg',
                        imagetype: 2)
puts BaiduOcr.recognize