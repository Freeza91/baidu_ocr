require 'base64'

module BaiduOcr
  module EncodeImage

    class << self

      def encode(image)
        begin
          puts "loading file from #{image}"
          stream = open(image, 'rb').read
        rescue Errno::ENOENT => e
          raise NotFound, "#{e.message}"
        end
        # ruby的Base64.encode64 有换行,好坑,无法满足要求
        Base64.strict_encode64 stream
      end
    end

  end
end