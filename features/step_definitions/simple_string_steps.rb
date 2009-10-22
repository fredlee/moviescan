Given /^"([^\"]*)" is a movie title$/ do |title|
  @movie_source = MovieScan::MovieSource.new(title)
end

Given /^I provide "([^\"]*)"$/ do |simple_string|
  @scanner = MovieScan::Scanner.new(@movie_source, simple_string)
end

When /^I ask for a matching movie title$/ do
  pending
end

Then /^it should return "([^\"]*)"$/ do |arg1|
  pending
end

