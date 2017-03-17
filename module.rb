module Trig
  PI_ = 3.141592654
  def Trig.sin(x)
    puts "#{x}"
  end
  def Trig.cos(x)
    puts "#{x}"
  end
end
module Moral
  VERY_BAD = 40
  BAD = 1
  def Moral.sin(badhess)
    puts "#{badhess}"
  end
end
Trig.sin(3)
Trig.cos(5)
Moral.sin(9)
puts "#{Trig::PI_}, #{Moral::VERY_BAD}"