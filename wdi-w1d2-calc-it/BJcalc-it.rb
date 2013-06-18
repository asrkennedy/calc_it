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
  puts "What is the first number?"
  first_number=gets.chomp.to_i
  puts "What is the second number?"
  second_number=gets.chomp.to_i
  case operation
  when 'a'
    puts first_number + second_number
  when 's'
    puts first_number - second_number
  when 'm'
    puts first_number * second_number
  when 'd'
    puts first_number / second_number
  end
end

def adv_calc
  # ask the user which operation they want to perform
  print "(p)ower, (s)quare root"
  operation = gets.chomp.downcase
  if operation == "s"
    puts "what is the number?"
     first_number=gets.chomp.to_i
     puts math.sqrt(first_number).to_s
   else
    puts "What is the first number?"
    first_number=gets.chomp.to_i
  puts "What is the second number?"
  second_number=gets.chomp.to_i
  puts first_number**second_number.to_s
end
end

def output
  puts "What is the first number?"
  first_number=gets.chomp.to_i
  puts "What is the second number?"
  second_number=gets.chomp.to_i
  [first_number, second_number]
end

# run the app...

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    adv_calc
  end
end






