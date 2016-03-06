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

puts double_trouble 'hgjeekdkai'
puts three_vowels 'hgjekdka'
puts no_candy 'dfgabdf'