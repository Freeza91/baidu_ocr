module BaiduOcr
  module Settings

    class << self
      DEFAULT_OPTIONS = {
        :fromdevice    => 'pc',
        :clientip      => '10.10.10.0',
        :detecttype    => 'LocateRecognize',
        :languagetype  => "CHN_ENG",
        :imagetype     => "1",
        :image         => "",
        :apikey        => "your api key"
      }

      attr_reader :settings

      REQUIRED_OPTION_KEYS = [:languagetype, :imagetype, :image, :apikey]

      def set_baidu_ocr(opts = {})
        @settings = DEFAULT_OPTIONS.merge!(opts)

        REQUIRED_OPTION_KEYS.each do |opt|
          raise BlankArgsError, opt if @settings[opt].to_s.strip.empty?
        end
      end

      def update_image(image)
        @settings[:image] = image
      end

    end

  end
end