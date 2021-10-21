def translate(str)
  words = str.split(' ')
  new_words = words.map { |word| pig_latinize(word) }
  new_words.join(' ')
end

def pig_latinize(word)
  word = word.downcase
  vowels = %w[a e i o u]
  return "#{word}ay" if vowels.include?(word[0])

  consonants = word.match(/[^aeiou]+/)[0]
  consonants += 'u' if consonants[-1] == 'q' && word[consonants.length] == 'u'
  word[0...consonants.length] = ''
  "#{word}#{consonants}ay"
end

