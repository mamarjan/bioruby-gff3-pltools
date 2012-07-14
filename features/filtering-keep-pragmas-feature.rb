Then /^the first line should contain "([^"]*)"$/ do |arg1|
  @result.lines.next.include?(arg1).should be_true
end

