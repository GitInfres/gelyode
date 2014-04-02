# tetris_rspec.rb

require './tetris'
require './rotate90'



tab_1 = Array.new(4) {|i| Array.new(4) {|j| 0} }

tab_1[0][2] = 1
tab_1[1][2] = 1
tab_1[2][2] = 1
tab_1[2][1] = 1

puts 'tab_1 (Etat init) :'
print tab_1
puts ''


tab_2 = Array.new(4) {|i| Array.new(4) {|j| 0} }

tab_2[1][1] = 1
tab_2[2][1] = 1
tab_2[2][2] = 1
tab_2[2][3] = 1

puts 'tab_2 (Etat final) :'
print tab_2
puts ''

puts 'After rotate90 :'
tab_after = rotate90(tab_1)
print tab_after
puts ''

puts 'Result :'
puts tab_after.eql?(tab_2) 