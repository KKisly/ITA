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
 puts "Average score of #{opts[:first]},#{opts[:second]},#{opts[:third]},#{opts[:fourth]} and #{opts[:fifth]} = #{(opts[:first] + opts[:second] + opts[:third] + opts[:fourth] + opts[:fifth]) / 5}"
