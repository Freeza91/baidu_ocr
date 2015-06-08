# BaiduOcr

百度OCR文字识别[API](http://apistore.baidu.com/apiworks/servicedetail/146.html) For Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baidu_ocr', :git => 'https://github.com/rudyboy/baidu_ocr'
```

And then execute:

    $ bundle


## Usage
``` ruby
require 'baidu_ocr'

BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'image.jpg', imagetype: 2)
puts BaiduOcr.recognize
```

## 结果对比

![测试图片](https://github.com/rudyboy/baidu_ocr/blob/master/examples/bit.jpg?raw=true) 

测试结果（截图百度百科，文字要在好些会效果更佳）：

```
北京理工大学（R声gh汕吧y）是中华人民共和国工业和信息化部直属的―所以理工科为主干，工、理，管、文协调发展的全国重点大学，是国家21工程”、吗舒工程”首批重点建设高校，是中俄工科大学联盟”成员，入选“m计，划、“211计划，“卓越工程师教育培养计划｀“国家建设高水平大学公派研究生项目”，为中管副部级高校，设有研究生院，  

学校前身北京工业学院发源于19和年在延安成立的延安自然科学院，是中国共产党创办的第一所理工科大学；1988年，学校：更名为北京理工大学，

截止加13年12月31日．该校有全日制在校生28674人．其中本科生14774人．硕士生为59人．博士生323人．1｜学校拥有中，关村校区良乡校区、西山实验区珠海校区和秦皇岛分校；设有19个专业学院和教育研究院，基础教育学院、继续教育学院高等职业技术学院及珠海学院

M12年，学校首次进入QS世界大学排名“亚洲大学1∞强”和世界大学W强”，在入选的9所中国高校中名列第B位（并，列
```

## Contributing

1. Fork it ( https://github.com/rudyboy/baidu_ocr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## LICENSE

The MIT License (MIT) Copyright (c) 2014 Jeremy Wei

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
