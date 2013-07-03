# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'optparse'
require 'optparse'
require 'csv'
OptionParser.new do |opts|

opts.on("-i","--input") do
 $file_name = ARGV[0]
 end
 opts.on("-r", "--row") do
 $row_num = ARGV[0].to_i-1
 end
 end.parse!
 
 csv_file = CSV.read($file_name)
 puts csv_file[$row_num]
 
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Here is sorted (alphabetically) words: #{csv_file[$row_num].sort.join(" ")}"
 puts "==================================================================="