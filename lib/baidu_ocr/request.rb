require 'rest-client'
require 'base64'

module BaiduOcr
  module Request

    class << self

      API_URL = "http://apis.baidu.com/apistore/idlocr/ocr"

      def send_request(opt = {})
        headers = { apiKey: opt.delete(:apikey) }
        params = opt
        respone = RestClient.post API_URL, params, headers
        if respone.code == 200
          body = JSON.parse respone.body
          return words(body['retData']) if body['errNum'].to_i == 0
          puts "识别不成功： #{body['errMsg']}"
        end
      end

      def words(text)
        text.collect{|k| k['word']}.join('')
      end

    end

  end
end