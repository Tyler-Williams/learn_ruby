class Book

  def title=(new_title)
    words = new_title.split
    i = 0
    while i < words.length
      if i == 0
        words[i][0] = words[i][0].upcase
      elsif words[i].length > 2 && words[i] != 'and' && words[i] != 'the' || words[i] == 'i'
        words[i][0] = words[i][0].upcase
      end
      i += 1
    end
    @title = words.join(' ')
  end

  def title
    @title
  end
end