# Script = script_18_07.rb
# Description = command line optiones using "trollop"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com

require 'trollop'

opts = Trollop::options do
 opt :sentence, "sentence", :short => "-s", :type => :strings
 end

 re = /[A-Z][a-z]+\s[A-Z][a-z]+/
 $a = opts[:sentence].join(" ").match re
 
 
 puts "=============================================================="
 puts "Script: #{__FILE__}"
 puts "His name is #{$a}"
 puts "=============================================================="