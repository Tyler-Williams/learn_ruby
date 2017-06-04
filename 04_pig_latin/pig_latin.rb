def translate(words)
  translated_words = ''
  words_array = words.split
  if words_array.length > 1
    i = 0
    while i < words_array.length
      translated_words += translate_to_pig_latin(words_array[i]) + ' '
      i += 1
    end
    translated_words.strip
  else
    translate_to_pig_latin(words_array[0])
  end
end

def translate_to_pig_latin(word)
  if word.downcase.include? 'qu'
    qu_position = word.downcase.index('qu')
    first_letters = word[0..qu_position + 1]
    translated_word = word[qu_position + 2..word.length] + first_letters + 'ay'
  elsif begins_with_vowel(word)
    translated_word = word + 'ay'
  elsif begins_with_three_consonants(word)
    first_three_letters = word[0..2]
    translated_word = word[3..word.length] + first_three_letters + 'ay'
  elsif begins_with_two_consonants(word)
    first_two_letters = word[0..1]
    translated_word = word[2..word.length] + first_two_letters + 'ay'
  else
    first_letter = word[0]
    translated_word = word[1..word.length] + first_letter + 'ay'
  end
  translated_word
end

def begins_with_vowel(word)
  case word[0].downcase
    when 'a', 'e', 'i', 'o', 'u'
      true
    else
      false
  end
end

def begins_with_two_consonants(word)
  case word[0].downcase
  when 'a', 'e', 'i', 'o', 'u'
    false
  else
    case word[1].downcase
    when 'a', 'e', 'i', 'o', 'u'
      false
    else
      true
    end
  end
end

def begins_with_three_consonants(word)
  case word[0].downcase
  when 'a', 'e', 'i', 'o', 'u'
    false
  else
    case word[1].downcase
    when 'a', 'e', 'i', 'o', 'u'
      false
    else
      case word[2].downcase
      when 'a', 'e', 'i', 'o', 'u'
        false
      else
        true
      end
    end
  end
end

def begins_with_qu(word)
  if word[0].downcase == 'q' && word[1].downcase == 'u'
    true
  else
    false
  end
end

translate('queen')
translate('square')
