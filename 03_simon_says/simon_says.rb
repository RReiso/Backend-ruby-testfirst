def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num = 2)
  ("#{str} " * num).strip
end

def start_of_word(str, num)
  str[0...num]
end

def first_word(str)
  str.match(/\S+/)[0]
end

def titleize(str)
  small_words = %w[is and the on at a in an if but or over]
  words = str.split(' ')
  capitalized_words = words.map do |word|
    small_words.include?(word) ? word : word.capitalize
  end
  capitalized_words[0] = capitalized_words[0].capitalize
  capitalized_words.join(' ')
end
