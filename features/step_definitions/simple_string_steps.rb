Given /^I provide a simple string "([^\"]*)" to the scanner$/ do |simple_string|
  @scanner = MovieScan::Scanner.new(simple_string)
end

Given /^I create a FanBoy$/ do
  @fan_boy = MovieScan::FanBoy.new(@movie_source, @scanner)
end

When /^I ask the FanBoy for matching movie titles$/ do
  @movies = @fan_boy.movies
end

Then /^the results (should|should not) include "([^\"]*)"$/ do |action, title|
  action = action.sub(' ', '_')
  @movies.send(action, include(title))
end

