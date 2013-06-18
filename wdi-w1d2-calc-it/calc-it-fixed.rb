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
end

# START bmi calculator

def bmi_calc
  puts "Do you want to use imperial or metric?"
  choice = gets.chomp.downcase.to_s
  puts "What is your weight?"
  weight = gets.to_f
  puts "What is your height?"
  height = gets.to_f

  case choice
    when 'imperial'
      puts "Your BMI is: #{weight/(height*height)}"
    when 'metric'
      puts "Your BMI is: #{weight/(height*height)}"
    else
      puts "Needs to be in imperial or metric."
    end
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
end
#END adding miles method (MPG)



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
  when 't'
    miles
  when 'm'
    mortgage
  end

puts "Press enter to return to menu."
response = gets.chomp

  response = menu
end
