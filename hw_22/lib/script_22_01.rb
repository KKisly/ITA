# Script = script_22_01.rb
# Description = csv file options using "optparse"
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
 puts "My favourite fruts are: #{csv_file[$row_num][0]}s and #{csv_file[$row_num][1]}s"
 puts "==================================================================="