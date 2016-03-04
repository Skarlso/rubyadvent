#!/usr/bin/env ruby

def move(ch, x, y)
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
  return x, y
end


filename = 'input.txt'
data = File.exists?(filename) ? File.read(filename) : 'File not found.'
houses = {}
santa_x = 0
santa_y = 0
robot_x = 0
robot_y = 0
houses[[santa_x, santa_y]] = true
houses[[robot_x, robot_y]] = true
index = 0

data.each_char do |ch|
  if index & 1 == 0
    santa_x, santa_y = move(ch, santa_x, santa_y)
    houses[[santa_x, santa_y]] = true
  else
    robot_x, robot_y = move(ch, robot_x, robot_y)
    houses[[robot_x, robot_y]] = true
  end
  index += 1
end

p houses.size
