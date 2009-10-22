Given /^a source with "([^\"]*)" as a movie title$/ do |title|
  @movie_source = MovieScan::MovieSource.new(title)
end

Given /^I provide a simple string "([^\"]*)" to the scanner$/ do |simple_string|
  @scanner = MovieScan::Scanner.new(simple_string)
end

Given /^I create a FanBoy$/ do
  @fan_boy = MovieScan::FanBoy.new(@movie_source, @scanner)
end

When /^I ask for a matching movie title$/ do
end

Then /^the results should include "([^\"]*)"$/ do |title|
  pending
end

