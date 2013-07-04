# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'
require 'json'
OptionParser.new do |opts|

opts.on("-i","--input") do
 $file_name = ARGV[0]
 end
 
end.parse! 

 json_file = File.read($file_name)
 element = JSON.parse(json_file)
 puts element
 
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Average score of #{element["int_a"].to_f}, #{element["int_b"].to_f}, etc is = #{(element["int_a"].to_f + element["int_b"].to_f + element["int_c"].to_f + element["int_d"].to_f + element["int_e"].to_f) / 5}"
 puts "==================================================================="
 
 
 