#!/usr/bin/env ruby

filename = 'input.txt'
data = File.exists?(filename) ? File.read(filename) : 'File not found.'
houses = {}
x = 0
y = 0
houses[[x, y]] = true
data.each_char do |ch|
  case ch
    when '^'
      x += 1
    when 'v'
      x -= 1
    when '>'
      y += 1
    when '<'
      y -= 1
  end
  houses[[x, y]] = true
end

p houses.size
