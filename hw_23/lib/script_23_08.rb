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
elements = []
 json_file = File.read($file_name)
 element = JSON.parse(json_file)
 puts element
 elements = element.each_value
 
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Here is sorted (alphabetically) words: #{elements.sort.join(" ")}"
 puts "==================================================================="