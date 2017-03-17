x = 1
if x > 2
  puts "x is greater than 2"
elsif x <= 2 and x != 0
  puts "x is 1"
else
  puts "i Can't guess number"
end
x = 1
unless x > 2
  puts "x is less then 2"
else
  puts "x is greater then 2"
end
$var = 1
print "1 -- Value is set
" if $var
print "2 -- Value is set
" unless $var
$var = false
print "3 -- Value is set
" unless $var
$age = 5
case $age
  when 0..2
    puts "baby"
  when 3..6
    puts "little child"
  when 7..12
    puts "child"
  when 13..18
    puts "youth"
  else
    puts "adult"
end
$i = 0
$num = 5
begin
  puts("Inside the loop i = #{$i}")
  $i += 1
end while $i < $num
$i = 0
$num = 5
while $i < $num do
  puts("- Inside the loop i = #{$i}")
  $i += 1
end
$i = 0
$num = 5
until $i > $num do
  puts("-- Inside the loop i = #{$i}")
  $i += 1
end
$i = 0
$num = 5
begin
  puts("Inside the loop i = #{$i}")
  $i += 1
end until $i > $num
for i in 0..4
  puts "Value of local variable is #{i}"
end
(0..5).each do |r|
  puts "- Value of local variable is #{r}"
end
for i in 0..5
  if i > 2 then
    break
  end
  puts "Value of local Variable is #{i}"
end
for i in 0..5
  if i < 2 then
    next
  end
  puts "- Value of local variable is #{i}"
end
# for i in 0..5
#   if i < 2 then
#     puts "redo value of local variable is #{i}"
#     redo
#   end
# end
score = 70
result = case score
           when 0..40; "Fail"
           when 41..60; "Pase"
           when 61..70; "Pase with Merit"
           when 71..100; "Pass With Distinction"
           else "Invalid Sclre"
         end
puts result
if (1..10) === 5
  puts '5 lies in (1..10)'
end
if ('a'..'j') === 'c'
  puts "c lies in ('a'..'j')"
end
if ('a'..'j') === 'z'
  puts "z lies in ('a'..'j')"
end