# Script = script_22_06.rb
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
 
sum = 0
a = 0
b = 0 

 element.each_value do |num|
 #puts num
 sum += num.to_f
 #puts sum
 end
 puts element.length
 summary = sum/element.length
 puts summary
 a,b = summary.to_s.split(".")
 if b.to_i == 0 then summary = summary.to_i end
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Average score of following numbers: #{element["int_a"].to_f}, #{element["int_b"].to_f}, #{element["int_c"].to_f}, etc is #{summary.to_f}"
 puts "==================================================================="
 
