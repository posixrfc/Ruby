#!/usr/bin/ruby -w
class Box
  BOX_COMPANY = "TATA Inc"
  BOXWEIGHT = 10
  attr_accessor :width, :height
  @@count = 0
  def initialize(w, h)
    @width, @height = w, h
    @@count += 1
  end
  def getWidth
    @width
  end
  def getHeight
    @height
  end
  def setWidth=(value)
    @width = value
  end
  def setHeight= (value)
    @height = value
  end
  def getArea
    @area = getWidth * getHeight
  end
  def to_s
    "(w:#{@width}, h:#{@height})"
  end
  def self.printCount
    puts "Box count is : #{@@count}"
  end
  def Box.showCount
    puts "Box count is : #{@@count}"
  end
  # private :setHeight, :getHeight
  def printArea
    @area = getWidth * getHeight
    puts "big box area is : #{@area}"
  end
  # protected :printArea
  # puts self.type
  puts self.name
end
class BigBox < Box
  def showArea
    @area = @width * @height
    puts "BigBox area is : #{@area}"
  end
  def getArea
    @area = getWidth * getHeight
    puts "Big Box area is - #{@area}"
  end
  def +(other)
    Box.new(@width + other.width, @height + other.height)
  end
  def -@
    Box.new(-@width, -@height)
  end
  def *(scalar)
    Box.new(@width * scalar, @height * scalar)
  end
end
box = Box.new(2, 9)
box1 = Box.allocate
box.printArea
# box1.printArea
puts Box::BOX_COMPANY
puts Box::BOXWEIGHT
=begin
box.freeze
if box.frozen?
  puts "Box object is frozen object"
else
  puts "Box object is normal object"
end
puts box.getHeight
box.setWidth =30
box.setHeight =50
box.getArea

box = Box.new(10, 20)
x = box.getWidth
y = box.getHeight
puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
puts "Area of the box is : #{a}"
Box.printCount
Box.showCount
puts box
a = box.getArea
puts a
box.printArea
=end