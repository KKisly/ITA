# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'

opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :string
 opt :second, "second", :short => "-b", :type => :string
end
puts "My favourite fruits are: #{opts[:first].chop} and #{opts[:second].chop}"
 
 
 