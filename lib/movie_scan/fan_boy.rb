module MovieScan
  class FanBoy
    def initialize(movie_source, scanner)
      @movie_source, @scanner = movie_source, scanner
    end

    def movies
      movies = @movie_source.match(@scanner.guesses)
      exact_matches = exact_matches(movies)

      exact_matches.empty? ? movies : exact_matches
    end

    private

    def exact_matches(movies)
      movies.select do |movie|
        @scanner.text =~ /#{movie}/
      end
    end
  end
end
