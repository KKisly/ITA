# Script = script_22_01.rb
# Description = csv file options using "optparse"
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
 puts "My favourite fruts are: #{element["fruit_a"]}s and #{element["fruit_b"]}s"
 puts "==================================================================="