# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end

def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
end

# run the app...

def addition
  #performs the addition
  puts "What's the first number?"
  first_number = gets.chomp.to_i
  puts "What's the second number?"
  second_number = gets.chomp.to_i
  puts "Your result is " + (first_number + second_number).to_s
end

def subtraction
 #performs the subtraction
  puts "What's the first number?"
  first_number = gets.chomp.to_i
  puts "What's the second number?"
  second_number = gets.chomp.to_i
  puts "Your result is " + (first_number - second_number).to_s
end

def multiplication
   #performs the multiplication
  puts "What's the first number?"
  first_number = gets.chomp.to_i
  puts "What's the second number?"
  second_number = gets.chomp.to_i
  puts "Your result is " + (first_number * second_number).to_s
end

def division
   #performs the division
  puts "What's the first number?"
  first_number = gets.chomp.to_i
  puts "What's the second number?"
  second_number = gets.chomp.to_i
  puts "Your result is " + (first_number / second_number).to_s
end

def power
   #performs the power function
  puts "What's the first number?"
  first_number = gets.chomp.to_i
  puts "What's the second number?"
  second_number = gets.chomp.to_i
  puts "Your result is " + (first_number ** second_number).to_s
end

def square_root
   #performs the square root
  puts "What's your number?"
  first_number = gets.chomp.to_i
  puts "Your result is " + math.sqrt(first_number).to_s
end

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
             when operation == 'a'
              addition
            when operation == 's'
              subtraction
            when operation == 'm'
              multiplication
            when operation == 'd'
              division
  when 'a'
    advanced_calc
  end




  response = menu

end




