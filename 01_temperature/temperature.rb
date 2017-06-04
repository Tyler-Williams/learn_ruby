def ftoc(tempF)
  tempC = (tempF - 32.0) * 5.0 / 9.0
  return tempC
end

def ctof(tempC)
  tempF = tempC * 9.0 / 5.0 + 32.0
  return tempF
end