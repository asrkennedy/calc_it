def menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, (m)ortgage, bm(i), mp(g) or (q)uit: "
  gets.chomp.downcase
end

def basic_calc
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f
  print "second number: "
  b = gets.to_f

  case operation
  when 'a'
    puts "#{a + b}"
  when 's'
    puts "#{a - b}"
  when 'm'
    puts "#{a * b}"
  when 'd'
    puts "#{a / b}"
  end

  gets
end

def advanced_calc
  print "(p)ower, (s)qrt: "
  operation = gets.chomp.downcase
  print "first number: "
  a = gets.to_f

  if operation == 's'
    puts "#{Math.sqrt(a)}"
  else
    print "second number: "
    b = gets.to_f
    puts "#{a**b}"
  end

  gets
end

def mortgage
  puts "To calculate your monthly mortgage payments, enter your annual interest rate:"
  annual_interest = gets.to_f
  i = annual_interest/12
  puts "How many years are you paying off?"
  years = gets.to_f
  n = (years*12)
  puts "Now enter your principal of the loan:"
  p = gets.to_f
      monthly_i = (i).to_f
      top = i*(1.0+i)**n
      bottom = ((1.0+i)**n) - 1
  puts "Your monthly interest rate is #{p*(top.to_f/bottom.to_f)}."
  gets
end


response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'm'
    mortgage
  end

  response = menu
end