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

def bmi_calc
  puts "Do you want to use imperial or metric?"
  choice = gets.chomp.downcase.to_s
  puts "What is your weight?"
  weight = gets.to_f
  puts "What is your height in inches?"
  height = gets.to_f

  case choice
    when 'imperial'
      puts "Your BMI is: #{weight/(height*height)}"
    when 'metric'
      puts "Your BMI is: #{weight/(height*height)}"
    else
      puts "Needs to be in imperial or metric."
    end

    gets
end


response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'i'
    bmi_calc
  end

  response = menu
end