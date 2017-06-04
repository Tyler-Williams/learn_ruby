def add(number1,number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(array)
  total = 0.0
  i = 0
  while i < array.length
    total += array[i]
    i += 1
  end
  total
end

def multiply(numbers)
  i = 0
  total = 1
  numbers.each do
    total *= numbers[i]
    i += 1
  end
  total
end

def divide(number1, number2)
  number1 / number2
end

def power(base, exponent)
  total = base
  i = 1
  while i < exponent
    total *= base
    i += 1
  end
  total
end

def factorial(number)
  if number == 0
    total = 0
  else
    total = 1
    n = number
    while n > 0
      total *= n
      n -= 1
    end
  end
  total
end