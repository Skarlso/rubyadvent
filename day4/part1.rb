#!/usr/bin/env ruby

require 'digest'

PUZZLE_INPUT = 'bgvyzdsv'

md5 = Digest::MD5.new

mine_index = 0
mine_hex = ""

loop do
    mine_index += 1
    mine_hex = Digest::MD5.hexdigest(PUZZLE_INPUT + mine_index.to_s)
    break if mine_hex.start_with?('00000')
end

puts mine_index
puts mine_hex
