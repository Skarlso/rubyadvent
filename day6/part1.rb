#!/usr/bin/env ruby

grid = Array.new

1000.times do |x|
  grid[x] = Array.new(1000, false)
end

File.readlines('input.txt').each do |line|
  split = line.split(' ')
  if split[0] == "toggle"
    fromx, fromy = split[1].split(',')
    action = "toggle"
  else
    fromx, fromy = split[2].split(',')
    action = split[1]
  end

  
end