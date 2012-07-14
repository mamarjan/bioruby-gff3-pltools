Given /^I have some GFF(\d+) data$/ do |arg1, gff3_data|
  @gff3_data = gff3_data
end

When /^run the function for filtering data$/ do
  @result = Bio::PL::GFF3::filter_data @gff3_data, @filter_string,
                                       output: @output_filename,
                                       at_most: @at_most,
                                       pass_fasta_through: @pass_fasta_through,
                                       keep_comments: @keep_comments,
                                       keep_pragmas: @keep_pragmas
end

Then /^the (\d+)th line should start with "([^"]*)"$/ do |arg1, arg2|
  @result.lines.map { |x| x } [arg1.to_i-1].index(arg2).should == 0
end

When /^set the keep_pragmas option$/ do
  @keep_pragmas = true
end

