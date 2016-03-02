#!/usr/bin/env ruby

filename = 'input.txt'

data = File.exists?(filename) ? File.read(filename) : 'File not found.'
floor = 0

data.each_char { |chr| floor += chr == ')' ? -1 : chr == '(' ? 1 : 0 }

puts floor
