#!/usr/bin/ruby -w
$global_variable = 10
class Customer
  @@no_of_customers = 0
  def initialize(id, name, addr)
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end
  def display_details()
    puts "Customer id #{@cust_id}"
    puts "Customer name #{@cust_name}"
    puts "Customer address #{@cust_addr}"
  end
  def total_no_of_customers()
    @@no_of_customers += 1
    puts "Total number of customers: #{@@no_of_customers}"
  end
end
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, khandala")
cust1.display_details
cust1.total_no_of_customers
cust2.display_details
cust2.total_no_of_customers
class Sample
  def hello
    puts "Hello Ruby!"
  end
end
Sample. new.hello
class Class1
  def print_global
    puts "Global variable in Class1 is #{$global_variable}"
  end
end
class Class2
  def print_global
    puts "Global variable in Class2 is #{$global_variable}"
  end
end
Class1.new.print_global
Class2.new.print_global
class Example
  VAR1 = 100
  VAR2 = 200
  def show
    puts "Value of first Constant is #{VAR1}"
    puts "Value of second Constant is #{VAR2}"
    puts __FILE__
    puts __LINE__
  end
end
Example.new.show
puts 6 <=> 2
puts (1..9) === 5
puts 5 === (1..9)
puts 1 == 1.0
puts 1.eql?(1.0)
a, b, c = 8, 9, 10
print a, b, c, "\n"
foo = 42
puts defined? foo
puts nil
puts defined? $_
puts defined? bar
puts defined? puts
puts defined? puts(bar)
puts defined? unpack
MR_COUNT = 0
module Foo
  MR_COUNT = 0
  ::MR_COUNT = 1
  MR_COUNT = 2
end
puts MR_COUNT
puts Foo::MR_COUNT
CONST = ' out there'
class Inside_one
  CONST = proc{' in there'}
  def where_is_my_CONST
    ::CONST + ' inside one'
  end
end
class Inside_tow
  CONST = ' inside two'
  def where_is_my_CONST
    CONST
  end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_tow.new.where_is_my_CONST
puts Object::CONST + Inside_tow::CONST
puts Inside_tow::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_tow::CONST