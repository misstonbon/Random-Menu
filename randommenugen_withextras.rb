#optionals:
# Expand your solution to ensure that no descriptive term
# in a menu item is ever repeated.

#DID THIS USING .pop and shuffle!

# So if the first menu item is hot
# pan-fried dumplings, the the phrases hot, pan-friend and dumpling cannot
# individually be used in any other menu items.
#
# Expand your solution to allow the user to determine how many
# items they'd like to see via user input.
# Note: You will need to
# ensure that this user-chosen number of items is not larger than
# the number of items you have in your arrays.
# Instead of using hardcoded or predefined arrays, make your program
# accept user input. This user input will be utilized to generate
# the menu items. You'll need to prompt for and store a varying
# number of entries for each food-type array.
menu_builder = [[],[],[]]
menu_builder[0] = %w{Hot Cold Quick Slow Laser-torched Loud Easy Crackling Fresh Soft}
menu_builder[1] = %w{scrambled fried baked steamed pan-seared burned boiled pickled soaked smoked}
menu_builder[2] = []

puts "Welcome to Chez Tanya, I'm about to show you the daily menu!\n We get creative up in here."
puts "Scared? Wanna create your own menu? (Y or N)\n>"
choice = gets.chomp.upcase!
until choice == "Y" || choice == "N"
  puts "Please enter y or n. Caps don't matter.\n>"
  choice = gets.chomp.upcase
end
if choice == "Y"
  puts "Okay. Let's create your own menu. How many items are there on the menu? I can only work with up to 10 food items. Less is more.\n> "
  foods = gets.chomp.to_i

  foods.times do
    puts "Please enter a food item: \n>"
    food = gets.chomp.downcase
    menu_builder[2] << food
  end

  puts "Here's your menu: "
  (1..foods).each do |i|
    puts "#{i}. #{menu_builder[0].shuffle!.pop} #{menu_builder[1].shuffle!.pop} #{menu_builder[2].shuffle!.pop}"
  end

else
  puts "You asked for it, here's the daily menu Chez Tanya:\n\n"
  menu_builder = [[],[],[]]
  menu_builder[0] = %w{Hot Cold Quick Slow Laser-torched Loud Easy Crackling Fresh Soft}
  menu_builder[1] = %w{scrambled fried baked steamed pan-seared burned boiled pickled soaked smoked}
  menu_builder[2] = %w{pikachu larvitar magikarp snorlax vaporeon crabby bulbasaur lapras dragonite moltres}

  (1..10).each do |i|
    puts "\n#{i}. #{menu_builder[0].shuffle!.pop} #{menu_builder[1].shuffle!.pop} #{menu_builder[2].shuffle!.pop}\n"
  end
  puts "Enjoy!"
end
