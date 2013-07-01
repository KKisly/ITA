# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'

opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :float
 opt :second, "second", :short => "-b", :type => :float 
 opt :third, "third", :short => "-c", :type => :float
 opt :fourth, "fourth", :short => "-d", :type => :float
 opt :fifth, "fifth", :short => "-e", :type => :float
end


sum = 0
a = 0
b = 0 
numbers = []

 opts.each_value do |num|
 
 next if num == false or num == true or num == nil
 
 numbers << num
 end
 numbers.each do |num|
 sum += num.to_f
 end
 puts sum
 puts numbers.length
 summary = sum/numbers.length
 puts summary
 #a,b = summary.to_s.split(".")
 if b.to_i == 0 then summary = summary.to_i end
 puts "Average score of following numbers: #{opts[:first]}, #{opts[:second]}, etc is #{summary.to_f}"

 
