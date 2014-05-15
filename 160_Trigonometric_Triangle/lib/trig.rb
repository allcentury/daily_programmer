require 'pry'
def radians_to_degrees(radian)
  binding.pry
  radian * (180 / Math::PI)
end
angle_a = 0
angle_b = 0

puts 'Please enter side a'
side_a = gets.chomp
puts 'Please enter side b'
side_b = gets.chomp
puts 'Please enter side c'
hypotenuse = gets.chomp
puts 'Angle C has been hardcoded to 90 degrees'
angle_c = 90


#find the missing lengths
#pythagereas' theorem
if side_a == '?'
  side_a = Math.sqrt(hypotenuse.to_f ** 2 - side_b.to_f ** 2)
elsif side_b == '?'
  side_b = Math.sqrt(hypotenuse.to_f ** 2 - side_a.to_f ** 2)
elsif hypotenuse == '?'
 hypotenuse = Math.sqrt(side_a.to_f ** 2 + side_b.to_f ** 2)
end

angle_a = Math.atan(side_a.to_f / side_b.to_f)
angle_a = radians_to_degrees(angle_a)
angel_b = side_a / Math.atan(side_b.to_f / side_a.to_f)
angel_b = radians_to_degrees(angel_b)

puts "Side a is #{side_a}"
puts "Side b is #{side_b}"
puts "The hypotenuse is #{hypotenuse}"
puts "Angle A is #{angle_a}"
puts "Angle b is #{angle_b}"
puts "Angle C is #{angle_c}"
