Given /^I provide "([^\"]*)"$/ do |simple_string|
  @scanner = Moviescan::Scanner.new(simple_string)
end

Given /^"([^\"]*)" is a movie title$/ do |arg1|
  pending
end

When /^I ask for a matching movie title$/ do
  pending
end

Then /^it should return "([^\"]*)"$/ do |arg1|
  pending
end

