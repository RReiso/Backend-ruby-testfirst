class Book
  attr_reader :title

  def title=(str)
    small_words = %w[is and the on at to a in an if of but or over]
    cap_words = str.split(' ').map do |word|
      small_words.include?(word) ? word : word.capitalize
    end
    cap_words[0] = cap_words[0].capitalize
    @title = cap_words.join(' ')
  end
end
