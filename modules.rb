#!/usr/bin/ruby -w
# -*- coding: UTF-8 -*-
module Module0
  PI = 3.141592654
  def Module0.sin(x)
    puts "#{self} sin x"
  end
  def self.cos(y)
    puts "#{self} cos y"
  end
end