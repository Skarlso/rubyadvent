#!/usr/bin/env ruby

def three_vowels(name)
  return name =~ /(.*[aioeu]){3}/
end

def double_trouble(name)
  return name =~ /(.)\1+/
end

def no_candy(name)
  return name =~ /^(?:(?!ab|cd|pq|xy).)+$/
end

file = "input.txt"
nice = 0

File.readlines(file).each do |line|
  if no_candy(line) != nil && double_trouble(line) != nil && three_vowels(line) != nil
    nice += 1
  end
end

puts nice