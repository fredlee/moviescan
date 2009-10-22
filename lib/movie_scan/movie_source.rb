module MovieScan
  class MovieSource

    def initialize(*movie_titles)
      @movie_titles = movie_titles
    end
    
    def match(title_guesses)
      @movie_titles.select do |title|
        title_guesses.any? { |guess| title =~ /#{guess}/ }
      end
    end

  end
end
