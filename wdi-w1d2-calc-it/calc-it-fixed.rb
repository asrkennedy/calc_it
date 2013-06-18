def menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, (m)ortgage, bm(i), (t)rip calculator or (q)uit: "
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
  puts "How far do you plan to drive? Please enter the estimated number of miles."
  distance = gets.to_f
  puts "How much does gas cost per gallon?"
  pg = gets.to_f
  puts "What's the fuel efficiency of your car, in MPG?"
  mpg = gets.to_f
  puts "Last question... how fast are you planning on driving, in miles per hour? Be honest!"
  speed = gets.to_f

  case speed
  when 1..59
    puts "Your trip will take #{distance / speed} hours, and should set you back $#{pg*distance/mpg}"
  when 60..120
    excess_speed = speed - 60
    new_mpg = mpg - (excess_speed*2)
    if new_mpg < 0
      puts "No. NO! You're going way too fas-- Oh. Your engine is dead. Yep! You just killed your car. Are you happy now?"
    else
    puts "Your trip will take #{distance / speed} hours, and should set you back $#{pg*distance/new_mpg}."
  end
  else puts "Ok. Hold on. Ain't the limit 120mph in your country? You just KNOW you're not allowed to drive this fast. I am not going to help you."
 end

  gets
end
#END adding miles method (MPG)


#START BMI
def bmi_calc
  print "Do you want to enter your weight in pounds or kilograms?"
    weight_choice = gets.downcase.to_s
    case weight_choice
    when 'pounds'
      print "What is your weight in pounds?"
      weight_pounds = gets.to_f
    when 'kilograms'
      print "What is your weight in kilograms?"
      weight_kgs = gets.to_f
    else
      print "Please enter either pounds or kilograms. "
    end

    print "What is your height in inches?"
    b = gets.to_f
    puts "#{a/(b*b)}"
  gets

end
#END BMI

def mortgage
  puts "To calculate your monthly mortgage payments, enter your annual interest rate:"
  annual_interest = gets.to_f
  i = (annual_interest/12)/100
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

# START - adding the 'when MPG'
  when 't'
    miles
# END - end of 'when MPG'

# START - BMI
  when 'i'
    bmi_calc
# END - BMI

  when 'm'
    mortgage
  end

  response = menu
end
