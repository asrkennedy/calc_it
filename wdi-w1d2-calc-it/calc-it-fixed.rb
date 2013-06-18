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

#START adding miles method (MPG)

def miles
  print "Do you want to know your MPG ratio?"
  print "How far do you plan to drive?"
  distance = gets.to_f
  print "How much does gas cost per gallon?"
  pg = gets.to_f
  print "Last question... how fast are you planning on driving? Be honest!"
  speed = gets.to_f
  puts =



#END adding miles method (MPG)


response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc

# START - adding the 'when MPG'
  when 'g'
    miles
# END - end of 'when MPG'

  end

  response = menu
end
end