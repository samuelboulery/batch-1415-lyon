## Trouver la date du jour
## Trouver la date de Noël
## Les comparer

require "date"

def days_until_xmas
  today = Date.today
  xmas = Date.new(2023, 12, 25)

  result = xmas - today

  return result.to_i
end

def days_until_xmas_from(year, month, day)
  date = Date.new(year, month, day)
  xmas = Date.new(year, 12, 25)

  if date > xmas
    xmas = Date.new(year + 1, 12, 25)
  end

  result = xmas - date

  return result.to_i
end

puts "Which year ?"
year = gets.chomp.to_i

puts "Which month ?"
month = gets.chomp.to_i

puts "Which day ?"
day = gets.chomp.to_i

puts days_until_xmas_from(year, month, day)
