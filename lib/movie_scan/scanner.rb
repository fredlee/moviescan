module MovieScan
  class Scanner
    attr_reader :text, :source

    def initialize(source, text)
      @source, @text = source, text
    end
  end
end
