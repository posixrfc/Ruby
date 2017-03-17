#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
$LOAD_PATH << '.'
require 'modules'
Module0.cos 5
Module0.sin 9
puts Module0::PI
class Decade
  include Module0
  def informations
    Module0.cos 5
    Module0.sin 9
    puts Module0::PI
  end
end
Decade.new.informations
module A
  def a1
    puts "a--a1"
  end
  def a2
    puts "--a2"
  end
end
module B
  def a1
    puts "b--a1"
  end
  def b1
    puts "--b1"
  end
  def b2
    puts "--b2"
  end
end
class Sample
  include B, A
  def s1
    puts "--s1"
  end
  # def a1
  #   puts "class a1"
  # end
end
sample = Sample.new
sample.a1
sample.a2
sample.b1
sample.b2
sample.s1