Given /^I provide a complex string "([^\"]*)" to the scanner$/ do |complex_string|
  @scanner = MovieScan::Scanner.new(complex_string)
end

