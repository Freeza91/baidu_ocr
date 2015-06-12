# BaiduOcr

百度OCR文字识别[API](http://apistore.baidu.com/apiworks/servicedetail/146.html) For Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'baidu_ocr', :git => 'https://github.com/rudyboy/baidu_ocr'
```

or 

```ruby
gem install baidu_ocr
```

And then execute:

    $ bundle


## Usage

``` ruby
require 'baidu_ocr'

# 参数说明
# 1. detectType 
# LocateRecognize: 整图文字检测、识别,以行为单位（默认）
# Locate:整图文字行定位
# Recognize:整图文字识别
# SingleCharRecognize:单字图像识别

# 2. languageType
# CHN_ENG(中英)（默认）
# ENG（英文）
# JAP(日文)
# KOR(韩文)

# local image && imagetype = 1
BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'bit.jpg',
                        imagetype: 1)
puts BaiduOcr.recognize

# local image && imagetype = 2
BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'bit.jpg',
                        imagetype: 2)
puts BaiduOcr.recognize

# image from web && imagetype = 1
BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'https://raw.githubusercontent.com/rudyboy/baidu_ocr/master/examples/bit.jpg',
                        imagetype: 1)
puts BaiduOcr.recognize

# image from web && imagetype = 2
BaiduOcr.init_baidu_ocr(apikey: 'your api',
                        image: 'https://raw.githubusercontent.com/rudyboy/baidu_ocr/master/examples/bit.jpg',
                        imagetype: 2)
puts BaiduOcr.recognize

# 完全自定义参数
BaiduOcr.init_baidu_ocr(fromdevice:'your device',
                        clientip: 'your clientip',
                        detecttype: 'your detecttype',
                        languagetype: 'your languagetype',
                        imagetype: 'your imagetype',
                        image: 'your image path',
                        apikey: 'your api'
                        )
puts BaiduOcr.recognize

```

## 结果对比

>1. 测试结果（截图百度百科，原文字图片好些效果更佳）：

![测试图片](https://github.com/rudyboy/baidu_ocr/blob/master/examples/bit.jpg?raw=true) 

```
北京理工大学（R声gh汕吧y）是中华人民共和国工业和信息化部直属的―所以理工科为主干，
工、理，管、文协调发展的全国重点大学，是国家21工程”、吗舒工程”首批重点建设高校，
是中俄工科大学联盟”成员，入选“m计，划、“211计划，“卓越工程师教育培养计划｀
“国家建设高水平大学公派研究生项目”，为中管副部级高校，设有研究生院，  

学校前身北京工业学院发源于19和年在延安成立的延安自然科学院，
是中国共产党创办的第一所理工科大学；1988年，学校：更名为北京理工大学，

截止加13年12月31日．该校有全日制在校生28674人．其中本科生14774人．硕士生为59人．
博士生323人．1｜学校拥有中，关村校区良乡校区、西山实验区珠海校区和秦皇岛分校；
设有19个专业学院和教育研究院，基础教育学院、继续教育学院高等职业技术学院及珠海学院

M12年，学校首次进入QS世界大学排名“亚洲大学1∞强”和世界大学W强”，
在入选的9所中国高校中名列第B位（并，列
```

>2 这个测试结果的正确率相当高

![测试图片](https://github.com/rudyboy/baidu_ocr/blob/master/examples/test.jpg?raw=true) 

```
真金不怕火炼，百炼才能成钢，
烈火无情的撕咬着钢的肌肤，而他，却一声不吭，他终，
究是沉默的，可在这死一般寂静的黑夜里，黎明上的到
来，毕竟是无法抗拒的，不是在沉默中爆发，就是在先沉默：
中灭亡，他选择了坚持，因为他有一副铿铿锵锵的骨骼，他，
有一条不灭的灵魂！所以，他战胜了黑夜，无情上的火屈服
在他的脚下，他迎来了光明，他挺直的腰板，闪烁上的光；
明，向世界宣告他的成功，
风雨如罄上的时代，法西斯侵占了俄国的领土，他们妄：
想征服全世界！他想让人们拜倒在他们脚下，可是，他们想，
错了，人们不可能永远充实当傀儡！会有站起来的那一天：
的人们盼望着一声春雷，一声响彻大地的春雷，一个革命，
新的开始，
保尔就生长在俄国与法西斯战争及其艰苦上的环境：
中，他的一生是与挫折，困难做斗争的一生，他儿时被迫成：
了童工，尝尽了人间的冷暖，是什么让他一次次硬挺下，
去？是对，是钢铁般上的毅力，是烈火焚烧若等闲的信
念！柯察金的青年，是冲破了拂晓的先沉默，是黎明上的到
来，俄国人民崛起，为法西斯即来的灭亡敲响了丧钟。
```
## Contributing

1. Fork it ( https://github.com/rudyboy/baidu_ocr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## LICENSE

The MIT License (MIT) Copyright (c) 2015 rudyboy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
