module MovieScan
  class MovieSource

    def initialize(*movie_titles)
      @movie_titles = movie_titles
    end
    
    def match(title_guess)
      @movie_titles.select do |title|
        title == title_guess
      end
    end

  end
end
