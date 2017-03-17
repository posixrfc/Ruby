def test(a1 = "Ruby", a2 = "Perl")
  puts "The programmint language is #{a1}"
  puts "The programming language is #{a2}"
end
test "C", "C++"
test "Python"
test
test("Objective-C", "Swift")
test("JavaScript")
test()
def sum
  i = 100
  j = 200
  k = 300
  return i, j, k
end
var = sum
puts var
def sample(*tst)
  puts "The number of parameters is #{tst.length}"
  for i in 0...tst.length
    puts "The parameters are #{tst[i]}"
  end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"
class Accounts
  def reading_charge
    puts "reading_charge called"
  end
  def Accounts.return_date
    puts "Accounts.return_date called"
  end
end
Accounts.return_date
test
undef test
# test
def testa
  puts "You are in the method"
  yield
  puts "You are again back to the method"
  yield
end
testa{puts "You are int the block"}
def testb
  yield 5, 6
  puts "- You are in the method test"
  yield 100, 99
end
testb{|i, j| puts "- You are in the block #{i}, #{j}"}
def testc(&block)
  block.call
end
testc{puts "Hello World"}
BEGIN {
  puts "A"
}
BEGIN {
  puts "B"
}
END {
  puts "C"
}
END {
  puts "D"
}