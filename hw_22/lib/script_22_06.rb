# Script = script_22_06.rb
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
 
 sum = 0
a = 0
b = 0 

 csv_file[$row_num].each do |num|
  #puts num
 sum += num.to_f
 puts sum
 end
 puts csv_file[$row_num].length
 summary = sum/csv_file[$row_num].length
 puts summary
 a,b = summary.to_s.split(".")
 if b.to_i == 0 then summary = summary.to_i end
 puts "==================================================================="
 puts "Script: #{__FILE__}"
 puts "Average score of following numbers: #{csv_file[$row_num][0].to_f}, #{csv_file[$row_num][1].to_f}, etc is #{summary.to_f}"
 puts "==================================================================="
 
