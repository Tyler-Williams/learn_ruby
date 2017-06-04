def echo(message)
  p message
end

def shout(message)
  p message.upcase
end

def repeat(message, times = 2)
  printed_message = ""
  while times > 0
    if times == 1
      printed_message += message
    else
    printed_message += message + " "
    end
    times -= 1
  end
  p printed_message
end

def start_of_word(word, number_of_letters = 1)
  word[0..number_of_letters - 1]
end

def first_word(message)
  words = message.split(' ')
  words[0]
end

def titleize(message)
  words = message.split
   i = 1
  titleized_message = words[0].capitalize
  while i < words.length
    case words[i]
      when 'the', 'and', 'over'
        titleized_message += ' ' + words[i]
      else
        titleized_message += ' ' + words[i].capitalize
    end
#    titleized_message += ' ' + words[i].capitalize
    i += 1
  end
  titleized_message.strip
end
