#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
def test
  puts "in test block"
  yield
  puts "also in test block"
  yield
end
test{puts "hello world"}
def param_test
  yield 5
  puts "- in test block"
  yield 99
  puts "- alawys in block test"
end
param_test{|i| puts "you are int #{i} inner"}
$c = 0
def complex_method(v1=9, *args, &block)
  puts "Length #{v1} is #{args.length}"
  for i in 0...args.length
    puts("parameter #{i} is #{args[i]}")
  end
  yield 2, 3
  block.call(5, 8)
end
complex_method(33){|a, b| $c = $c + 1; puts "a = #{a}, b = #{b}, $c = #{$c}"}
END {
  puts "--- END ---"
}
BEGIN {
  puts "--- BEGIN ---"
}