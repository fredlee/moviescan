module MovieScan
  class FanBoy
    def initialize(movie_source, scanner)
      @movie_source, @scanner = movie_source, scanner
    end

    def movies
      @movie_source.match(@scanner.guesses)
    end
  end
end
