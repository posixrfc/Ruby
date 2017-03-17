#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
def test(a1 = "Ruby", a2 = "Perl")
  puts "Language is #{a1} and #{a2}"
end
test "C", "C++"
test
test "Java"
def test1(a1 = "Ruby", a2)
  puts "programming Language is #{a1} and #{a2}"
end
test1("SQL", "JavaScript")
puts test1("go")
def value
  i = 100
  j = 200
  k = 300
  puts __FILE__
  return i, j, k
  puts __FILE__
end
puts value
def function(*args)
  puts "length #{args.length}"
  for i in 0...args.length
    puts "parameter #{i} is #{args[i]}"
  end
end
function "Zara", "5", "F"
function "Zara", nil, "5", false, "F"
function("Mac", 36, 'ARC', "UNIX", nil)
class Accounts
  def reading_charge
    puts self
  end
  def Accounts.return_date
    puts "Accounts.return_date called"
  end
  def self.get_value
    puts "self.get_value called"
    puts self
  end
end
Accounts.get_value
Accounts.return_date
Accounts.new.reading_charge
alias exam test
exam
# undef exam
undef test
# test
exam