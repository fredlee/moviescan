require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module MovieScan
  describe FanBoy do
    describe "#match" do
      it "returns matches given a scanner and a source" do
        movie_source = mock('Movie Source')
        scanner = mock('Scanner', :guesses => ['a', 'b'])
        movie_source.should_receive(:match).with(['a', 'b']).and_return(['a'])
        
        FanBoy.new(movie_source, scanner).movies.should == ['a']
      end
    end
  end
end

