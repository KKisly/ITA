# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
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
 
 #puts csv_file
 puts $row_num
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Average score of #{csv_file[$row_num][0].to_f}, #{csv_file[$row_num][1].to_f}, #{csv_file[$row_num][2].to_f}, #{csv_file[$row_num][3].to_f}, #{csv_file[$row_num][4].to_f}= #{(csv_file[$row_num][0].to_f + csv_file[$row_num][1].to_f + csv_file[$row_num][2].to_f + csv_file[$row_num][3].to_f + csv_file[$row_num][4].to_f) / 5}"
 puts "==================================================================="
 
 
 