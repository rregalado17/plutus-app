users = [
    {username: "rregalado", password: "password1"},
    {username: "jsmith", password: "password2"},
    {username: "jdoe", password: "password3"},
    {username: "skane", password: "password4"},
    {username: "dtrump", password: "password5"},
]

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    return "Credentials were not correct."
end



attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to wuit or any other key to continue: "
    input = gets.chomp.downcase 
    break if input == "n"
    attempts += 1
end
puts "You have exceeded the number of attempts" if attemps == 4