$:.unshift(File.dirname(__FILE__) + '/../lib')

require "baidu_ocr/version"
require "baidu_ocr/settings"
require "baidu_ocr/exceptions"
require "baidu_ocr/file_read"
require "baidu_ocr/request"
require "baidu_ocr/encode_image"

module BaiduOcr
  class << self

    def init_baidu_ocr(opt = {})
      BaiduOcr::Settings.set_baidu_ocr opt
      image = case opt[:imagetype]
      when 1
        # base64 image
        # opt[:image] || BaiduOcr::EncodeImage.encode
      when 2
        BaiduOcr::FileRead.read opt[:image]
      else
        raise BlankArgsError, "imagetype"
      end

      BaiduOcr::Settings.update_image(image)
    end

    def recognize
      BaiduOcr::Request.send_request(BaiduOcr::Settings.settings)
    end

  end
end
