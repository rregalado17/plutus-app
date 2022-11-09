puts "Hello World"

# first_name = "Robinson"
# last_name = "Regalado"
# intro = "My first name is #{first_name} and my last name is #{last_name}"
# p intro.sub("my last name", "last name") 
#variable assignment always points to the reference of memory. / are used for special characters


puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp 
full_name = first_name + " " + last_name 
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{full_name.length - 1} characters in it."

puts "Simple Calculator"
25.times { print "-"}
puts "Enter the first number"
num_1 = gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "This first number multiplied by the second number is #{num_1.to_i * num_2.to_i}"
puts "This first number divided by the second number is #{num_1.to_i / num_2.to_i}"
puts "This first number added by the second number is #{num_1.to_i + num_2.to_i}"
puts "This first number subtracted by the second number is #{num_1.to_i - num_2.to_i}"
puts "This first number moded by the second number is #{num_1.to_f % num_2.to_f}"