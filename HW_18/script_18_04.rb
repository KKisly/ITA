# Script = script_17_01.rb
# Description = command line optiones using "optparse"
# Name = Konstantin Kisly
# EMail = kisly.k@gmail.com
require 'trollop'

opts = Trollop::options do
 opt :first, "first", :short => "-a", :type => :integer
 opt :second, "second", :short => "-b", :type => :integer
 opt :third, "third", :short => "-c", :type => :integer
 opt :fourth, "fourth", :short => "-d", :type => :integer
end
 puts "My IP Address is: #{opts[:first]}.#{opts[:second]}.#{opts[:third]}.#{opts[:fourth]}"