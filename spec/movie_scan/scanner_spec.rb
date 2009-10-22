require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module MovieScan
  describe Scanner do
    it "exposes the given string as text" do
      scanner = Scanner.new(MovieSource.new, "foo")
      scanner.text.should == "foo"
    end

    it "exposes the source" do
      source = MovieSource.new
      scanner = Scanner.new(source, "foo")
      scanner.source.should == source
    end
  end
end
