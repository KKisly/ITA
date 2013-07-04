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
 puts "My IP Adress is #{element["octet_1"].to_i}.#{element["octet_2"].to_i}.#{element["octet_3"].to_i}.#{element["octet_4"].to_i}"
 puts "==================================================================="
 
