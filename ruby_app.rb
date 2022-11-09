puts "Hello World"

# first_name = "Robinson"
# last_name = "Regalado"
# intro = "My first name is #{first_name} and my last name is #{last_name}"
# p intro.sub("my last name", "last name") 
#variable assignment always points to the reference of memory. / are used for special characters


# puts "Enter your first name"
# first_name = gets.chomp
# puts "Enter your last name"
# last_name = gets.chomp 
# full_name = first_name + " " + last_name 
# puts "Your full name is #{full_name}"
# puts "Your full name reversed is #{full_name.reverse}"
# puts "Your name has #{full_name.length - 1} characters in it."

puts "Simple Calculator"

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def modolo(first_num, second_num)
    first_num.to_f % second_num.to_f
end

25.times { print "-"}
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
# puts "This first number multiplied by the second number is #{multiply(num_1, num_2)}"
# puts "This first number divided by the second number is #{divide(num_1, num_2)}"
# puts "This first number added by the second number is #{add(num_1, num_2)}"
# puts "This first number subtracted by the second number is #{subtract(num_1, num_2)}"
# puts "This first number moded by the second number is #{modolo(num_1, num_2)}"
puts "What do you want to do? Enter 1 to multiply, 2 to add or 3 to subtract"
user_entry = gets.chomp 
if 
    user_entry == "1"
    puts "You have seleceted to multiple. The result is #{multiply(num_1, num_2)}."
    elsif
        user_entry == "2"
        puts "You have selected to add. The result is #{add(num_1, num_2)}"
    elsif
        user_entry == "3"
        puts "You have selected to subtract. The result is #{subtract(num_1, num_2)}"
    else
        puts "Invalid Entry!"
end

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
