require "pry"

cc_array_2 = []
cc_array_3 = []
cc_array_4 = []
last_step = 0

puts "What is the credit card number?"
cc = gets.chomp

cc_array = cc.to_s.chars

cc_array.each do |number|
  number = number.to_i
  cc_array_2 << number
end

cc_array_2.each_with_index do |number, i|
  if i.even? == true
     number = number * 2
     cc_array_3 << number
  else
     cc_array_3 << number
  end
end

cc_array_3.each do |number|
  if number > 9
    number = number - 10 + 1
    cc_array_4 << number
  else
    cc_array_4 << number
  end
end

cc_array_4.each do |number|
    last_step = last_step + number
end

 if last_step % 10 == 0
   puts "The number is valid!"
 else
   puts "the number is invalid!"
  end

  #last_step takes on the first number, adds from there
  #ADD TO SUM!!! not number next to it
  #last_step = cc_array_4.inject{|sum,x| sum + x }
  #w/amex, in a block, ask if array is over a number of integers, if it is, then reverse it and send the number through the same code.  If not, don't reverse.
