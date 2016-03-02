#!/usr/bin/env ruby

file = 'input.txt'
total = 0

File.readlines(file).each do |line|
  split = line.split('x')
  split.sort!
  split = split.map(&:to_i)
  feet_of_ribbon = (split[0] * 2) + (split[1] * 2)
  bow = split.reduce { |a, e| a * e }
  total += (feet_of_ribbon + bow)
end

puts total
