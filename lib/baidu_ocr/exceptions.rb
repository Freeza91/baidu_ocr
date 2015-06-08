module BaiduOcr

  class Exception < RuntimeError; end

  class BlankArgsError < Exception
    def initialize(blank_key)
      super("Your args can not be blank. Please provide the #{blank_key}.")
    end
  end

  class NotFound < Exception
    def initialize(msg)
      super("#{msg}")
    end
  end

end
