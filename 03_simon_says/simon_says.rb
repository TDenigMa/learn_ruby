# frozen_string_literal: true

# write your code here

def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ("#{string} " * times).strip
end

def start_of_word(string, position)
  string[0..(position - 1)]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  words = string.split.map do |word|
    if %w[the and over].include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(' ')
end
