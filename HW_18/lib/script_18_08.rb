# Script = script_18_08.rb
# Description = command line optiones using "trollop"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'
word = []
opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :strings
 opt :second, "second", :short => "-b", :type => :strings
 opt :third, "third", :short => "-c", :type => :strings
 opt :fourth, "fourth", :short => "-d", :type => :strings
 end
 
 opts.each_value do |num|
 
 next if num == false or num == true or num == nil
 
 word << num
 end
 puts word
  
 #puts "#{opts.each_values}"
 #p opts 
 puts "=============================================================="
 puts "Script: #{__FILE__}"
 puts "Here is sorted (alphabetically) words: #{word.sort.join(" ")}"
 puts "=============================================================="