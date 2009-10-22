Given /^a source with "([^\"]*)" as movie titles$/ do |title|
  @movie_source = MovieScan::MovieSource.new(*title.split(", "))
end

