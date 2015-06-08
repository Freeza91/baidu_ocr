require 'open-uri'
require 'tempfile'
require 'base64'

module BaiduOcr
  module FileRead

    class << self

      def read(image)
        # file_contents = open('local-file.jpg') { |f| f.read }
        # web_contents = open('http://www.xxx.com.jpg') {|f| f.read }
        tmpfile = Tempfile.new(["ocr", ".jpg"])
        begin
          # can not save image extension like '.jpg'
          # http://stackoverflow.com/questions/9940633/is-it-possible-to-have-open-uri-maintain-the-extension
          puts "loading file from #{image}"
          stream = open(image, 'rb').read
        rescue Errno::ENOENT => e
          raise NotFound, "#{e.message}"
        end
        tmpfile.write(stream)
        file = open(tmpfile)
        tmpfile.unlink

        file
      end
    end

  end
end