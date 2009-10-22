module MovieScan
  class Scanner
    attr_reader :text

    def initialize(text)
      @text = text
    end

    def guesses
      @text.split(',').map { |name| name.strip }
    end
  end
end
