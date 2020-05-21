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
   cities = somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
   somehash["#{key}"]
end
 
puts "Would you like to find the area code a city? (Y/N)"
answer = gets.chomp.downcase

# Execution flow
loop do
  break if answer != 'y'
  if answer == 'y' 
    puts "These are the cities you can choose from."
    # puts 25.times("-")
    puts get_city_names(dial_book)
    # puts 25.times("-")
    puts "Which city is it that you want?"
    city = gets.chomp.downcase
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
  end
    puts "Would you like to find another area code? (Y/N)"
    another = gets.chomp.downcase
  break if another != 'y'
end
 