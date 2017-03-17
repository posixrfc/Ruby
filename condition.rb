#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
a = 4
if a == 4 then a = 7 end
puts a
$age = 5
case $age
  when 0..2 then
    puts "yin er"
  when 3..6 then
    puts "child"
  when 7..12
    puts "7 ~ 12"
  when 13..18 then
    puts "yourtheen"
  else
    puts "old man"
end
x = 1
if x > 2
  puts "x > 2"
elsif x <= 2 and x != 0
  puts "x is 1"
else
  puts "x is unknow"
end
$debug = 1
print "debug\n" if $debug
x = 1
unless x > 2
  puts "x is less then 2"
else
  puts "x is greater then 2"
end
$var = 0
print "1 -- this line\n" if $var
print "2 -- this line\n" unless $var
$var = false
print "3 -- this line\n" unless $var
$i = 0
$num = 5
while $i < $num do
  puts "in loop i = #{$i}"
  $i += 1
end
$i = 0
begin
  puts("in loot statment i = #{$i}")
  $i += 1
end while $i > $num
$i = 0
until $i > $num do
  puts("in loop until i = #{$i}")
  $i += 1
end
$i = 0
begin
  puts("in until i = #{$i}")
  $i += 1
end until $i > $num
for i in 9..14
  puts("local variable #{i}")
end
(0..5).each do |i|
  puts "#{i}"
end
for i in 2..7
  if i > 4 then
    break
  end
  puts("value is #{i}")
end
for i in 0..5
  if i < 2
    next
  end
  puts "next is #{i}"
end
for i in 0..5
  if i < 2
    puts "is #{i}"
    if a != 0
      a = 0
      redo
    end
  end
end