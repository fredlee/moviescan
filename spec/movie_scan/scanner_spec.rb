require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module MovieScan
  describe Scanner do
    it "exposes the given string as text" do
      scanner = Scanner.new("foo")
      scanner.text.should == "foo"
    end

    describe "#guesses" do
      it "splits the text by comma and returns an array" do
        scanner = Scanner.new("foo, bar, baz")
        scanner.guesses.should == ['foo', 'bar', 'baz']
      end
    end
  end
end
