require File.join(File.dirname(__FILE__), '..', 'spec_helper')

module MovieScan
  describe MovieSource do
    context "given an array source" do

      it "returns an empty array when no matches are found" do
        @movie_source = MovieSource.new("a", "b", "c")
        @movie_source.match(["z"]).should == []
      end    

      it "returns an array of exact matches" do
        @movie_source = MovieSource.new("a", "b", "c")
        @movie_source.match(["a"]).should == ["a"]
      end    

    end
  end
end
