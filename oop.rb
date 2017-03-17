class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def hello
    puts "Hello"
  end
  def display_details()
    puts "Customer id #{@cust_id}"
    puts "Customer name #{@cust_name}"
    puts "Customer address #{@cust_addr}"
  end
  def total_no_customers()
    @@no_of_customers += 1
    puts "Total number of customers: #{@@no_of_customers}"
  end
end
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
cust1.display_details
cust2.display_details
cust1.total_no_customers
cust2.total_no_customers
Customer.new("2", "Poul", "New Empire road, Khandala").hello
$global_variable = 10
class Class1
  def print_global
    puts "global variable in class1 is #{$global_variable}"
  end
end
class Class2
  def print_global
    puts "global variable in class2 is #{$global_variable}"
  end
end
Class1.new.print_global
Class2.new.print_global
VAR1 = 100
VAR2 = 200
class Example
  def show
    puts "value of first Constrant is #{VAR1}"
    puts "value of Second Constant is #{VAR2}"
  end
end
Example.new.show
ary = ["fred", 10, 3.14, "This is a start", "last element"]
ary.each do |i|
  puts i
end
hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value|
  print key, " is ", value, "
"
end
(10..15).each do |n|
  print n, ' '
end
(10...15).each do |n|
  print n, ' '
end