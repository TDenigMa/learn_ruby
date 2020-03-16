# frozen_string_literal: true

# write your code here

def translate(string)
  words_array = string.split(' ')
  translated = words_array.each.map { |s| pig_latin(s) }
  translated.join(' ')
end

def pig_latin(string)
  letter = string.split('')
  if letter[0].match(/[aeiou]/i)
    string + 'ay'
  elsif letter[0].match(/[^aeiou]/i) && letter[1].match(/[^aeiou]/i) &&
        letter[2].match(/[^aeiou]/i) || string.match(/^[^aeiou]qu/i)
    new_string = string.delete letter[0..2].join('')
    new_string + letter[0..2].join('') + 'ay'
  elsif letter[0].match(/[^aeiou]/i) && letter[1].match(/[^aeiou]/i) || 
        string.match(/^qu?/i)
    new_string = string.delete letter[0..1].join('')
    new_string + letter[0..1].join('') + 'ay'
  else
    new_string = string.delete letter[0]
    new_string + letter[0] + 'ay'
  end
end
