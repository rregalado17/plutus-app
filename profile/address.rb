dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
    somehash.each {|city, code| puts "#{city}"}
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash.each do |k, v|
        if k == key 
            return "#{v}"
            break
        end
    end
end

# Execution flow
loop do
    puts "Do you want to look up an areacode by city name (Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city name would you like to lookup?"
    get_city_names(dial_book)
    puts "Enter your selection: "
    prompt = gets.chomp.downcase
    if dial_book.include?(prompt) 
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else
        puts "You entered an invalid city name"
    end

end
