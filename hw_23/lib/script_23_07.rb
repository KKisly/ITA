# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
re = /[A-Z][a-z]+\s[A-Z][a-z]+/
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
 
 $a = element["sentence"].match re
 $b = element["sentence"]
 puts $b
 puts $a
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "His name is: #{$a}"
 puts "==================================================================="

