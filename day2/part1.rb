#!/usr/bin/env ruby

file = 'input.txt'
total = 0

File.readlines(file).each do |line|
  split = line.split('x')
  split = split.map(&:to_i)
  a = (split[0] * split[1])
  b = (split[1] * split[2])
  c = (split[0] * split[2])
  box = [(a * 2), (b * 2), (c * 2)]
  surface_area = box.reduce(&:+)
  total += surface_area + [a, b, c].min
end

puts total
