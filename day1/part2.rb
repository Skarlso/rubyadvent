#!/usr/bin/env ruby

filename = "input.txt"

data = File.exists?(filename) ? File.read(filename) : "File not found."
floor = 0
basement = 0
index = 1

data.each_char do |chr|
  floor += chr == ')' ? -1 : chr == '(' ? 1 : 0
  if basement == 0 && floor == -1
    basement = index
  end
    index += 1
end

puts floor
puts basement
