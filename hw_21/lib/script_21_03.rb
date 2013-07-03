# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'

OptionParser.new do |opts|

opts.on("-f","--first") do
 $a = ARGV[0]
 end
 
 opts.on("-s","--second") do
 $b = ARGV[0]
 end
 
 end.parse!
 puts "a / b = #{$a.to_f / $b.to_f}"
 
OptionParser.new do |opts|

opts.on("-i","--input") do
 $file_name = ARGV[0]
 end
 
 end.parse!
 
 lines = []
 file = File.open($file_name, "r")
 file.each_line do |line|
 puts line
 lines.push line
 end
 puts lines
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Result of a / b is #{lines[0] / lines[1]}"
 puts "==================================================================="