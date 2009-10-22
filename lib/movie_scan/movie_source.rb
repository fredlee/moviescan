module MovieScan
  class MovieSource

    def initialize(*movie_titles)
      @movie_titles = movie_titles
    end
    
    def match(title_guesses)
      @movie_titles.select do |title|
        title_guesses.any? { |guess| guess == title }
      end
    end

  end
end
