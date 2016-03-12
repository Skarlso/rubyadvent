#!/usr/bin/env ruby

grid = Array.new

1000.times do |x|
  grid[x] = Array.new(1000, false)
end

File.readlines('input.txt').each do |line|
  split = line.split(' ')
  if split[0] == "toggle"
    fromx, fromy = split[1].split(',').map(&:to_i)
    action = "toggle"
  else
    fromx, fromy = split[2].split(',').map(&:to_i)
    action = split[1]
  end

  tox, toy = split.last.split(',').map(&:to_i)

  fromx.upto(tox) do |x|
    fromy.upto(toy) do |y|
      case action
      when "toggle"
        grid[x][y] = !grid[x][y]
      when "on"
        grid[x][y] = true
      when "off"
        grid[x][y] = false
      end
    end
  end
end

puts grid.flatten.count{ |x| x == true }