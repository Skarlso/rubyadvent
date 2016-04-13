#!/usr/bin/env ruby

operations = {}

File.readlines('input.txt').each do |line|
  case line.chomp
  when /(\w+) OR (\w+) -> (\w+)/
    then operations[Regexp.last_match(3)] =
           "#{Regexp.last_match(1)}|#{Regexp.last_match(2)}"
  when /(\d+) AND (\w+) -> (\w+)/
    then operations[Regexp.last_match(3)] =
           "#{Regexp.last_match(1)}&#{Regexp.last_match(2)}"
  when /(\w+) AND (\w+) -> (\w+)/
    then operations[Regexp.last_match(3)] =
           "#{Regexp.last_match(1)}&#{Regexp.last_match(2)}"
  when /(\w+) LSHIFT (\d+) -> (\w+)/
    then operations[Regexp.last_match(3)] =
           "#{Regexp.last_match(1)}<<#{Regexp.last_match(2)}"
  when /(\w+) RSHIFT (\d+) -> (\w+)/
    then operations[Regexp.last_match(3)] =
           "#{Regexp.last_match(1)}>>#{Regexp.last_match(2)}"
  when /NOT (\w+) -> (\w+)/
    then operations[Regexp.last_match(2)] =
           "~#{Regexp.last_match(1)}"
  when /(\d+) -> (\w+)/
    then operations[Regexp.last_match(2)] =
           "#{Regexp.last_match(1)}=#{Regexp.last_match(2)}"
  when /(\w+) -> (\w+)/
    then operations[Regexp.last_match(2)] =
           "#{Regexp.last_match(1)}=#{Regexp.last_match(2)}"
  end
end
