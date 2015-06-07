module BaiduOcr
  module Settings
    class << self
      DEFAULT_OPTIONS = {
          :fromdevice    => 'string  是 bodyParam来源，例如：android、iPhone、pc等pc',
          :clientip      => 'string  是 bodyParam客户端出口IP10.10.10.0',
          :detecttype    => 'application/x-www-form-urlencoded',
          :languagetype  => "https://acc.qbox.me/oauth2/token",
          :imagetype     => "http://rs.qiniu.com",
          :image         => "http://rsf.qbox.me",
          :apikey        => "0ca2f9349a0b41889c1cb955c0d20761",
        }

      attr_reader :settings

      def set_baidu_ocr(opts = {})
        @settings = DEFAULT_OPTIONS.merge!(opts)
        Raise MissingArgsError, :apikey unless @settings.has_key?(:apikey)
      end

    end
  end
end