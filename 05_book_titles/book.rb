# frozen_string_literal: true

# takes a book title and upcases it properly
class Book
  attr_reader :title

  def title=(new_title)
    words_array = new_title.split(' ')
    upcased = words_array.each.map { |s| uppercase(s) }
    unfinished_title = upcased.join(' ')
    @title = unfinished_title[0].capitalize + unfinished_title[1..-1]
  end

  def uppercase(string)
    if string.match(/(^a$)|(^an$)|(^and$)|(^the$)|(^in$)|(^on$)|(^of$)/i)
      string
    else
      string.capitalize
    end
  end
end
