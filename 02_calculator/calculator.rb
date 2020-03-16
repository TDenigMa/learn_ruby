# frozen_string_literal: true

# write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  total = 0
  array.each do |i|
    total += i
  end
  total
end

def multiply(array)
  total = 1
  array.each do |i|
    total *= i
  end
  total
end

def power(a, b)
  a**b
end

def factorial(number)
  fact = []
  1.upto(number) do |n|
    fact << n
  end
  multiply(fact)
end