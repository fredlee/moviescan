require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module Moviescan
  describe Scanner do
    it "exposes the given string as text" do
      scanner = Moviescan::Scanner.new("foo")
      scanner.text.should == "foo"
    end
  end
end
