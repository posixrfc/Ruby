#!/usr/bin/ruby
=begin
myStr = String.new("THIS IS TEST")
foo = myStr.downcase
puts "#{foo}"
names = Array.new
puts names.size
puts names.length
names = Array.new(22)
puts names.size
puts names.length
names = Array.new(4, "mac")
puts "#{names}"
names = Array.new(10){|e| e = e * 2}
puts "#{names}"
names = Array.[](1, 2, 3, 4, 5)
puts "#{names}"
names = Array[2, 3, 56, 87, 9]
puts "#{names}"
names = Array(0...28)
puts "#{names}"
num = names.at 6
puts "#{num}"
num = names.at(7)
puts "#{num}"
num = names.at   (  8 )
puts "#{num}"
a = ["a", "b", "c"]
n = [65, 66, 67]
puts a.pack("A3A3A3")
puts a.pack "a3a3a3"
puts n.pack("ccc")

$, = ", "
months = Hash.new
months = Hash.new("month")
months = Hash.new "month"
puts "#{months[0]}"
puts "#{months[72]}"
months = Hash["a" => 100, "b" => 200, [1, "jan"] => "January"]
puts "#{months['a']}"
puts "#{months["b"]}"
keys = months.keys
puts "#{months}"
puts("#{keys}")

rg1 = (1..10).to_a
rg2 = ('baa'..'bai').to_a
puts "#{rg1}"
puts "#{rg2}"

digits = 0..9
puts digits.include?(5)
puts digits.min
puts digits.max
print digits.reject{|i| i < 5}
digits.each do |digit|
  puts "In Loop #{digit}"
end
# while gets
#   print if /start/../end/
# end
ary = [1, 2, 3, 4, 5]
ary.each do |i|
  print "- #{i}"
end
a = [1, 2, 3, 6, 9]
b = Array.new
b = a.collect
puts b
b = a.collect{|x| 10 * x}
puts b
=end
ary = ["fred", 10, 3.14, "This is a string", "last element"]
ary.each do |i|
  puts i
end
hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value|
  print key, " is ", value, "\n"
end