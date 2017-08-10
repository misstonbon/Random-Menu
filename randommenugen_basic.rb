# menu_builder = [[],[],[]]
# menu_builder[0] = %w{hot cold quick slow laser-torched loud easy crackling fresh soft}
# menu_builder[1] = %w{scrambled fried baked steamed pan-seared burned boiled pickled soaked smoked}
# menu_builder[2] = %w{potatoes greens steak shrimp crudites pasta pizza ice-cream fish bugs}
#
# puts "Welcome to Chez Tanya, here's your random menu! We get creative up in here."
#
# (1..10).each do |i|
#   puts "#{i}. #{menu_builder[0].shuffle!.pop} #{menu_builder[1].shuffle!.pop} #{menu_builder[2].shuffle!.pop}"
# end
#
# puts "Now, isn't that just YUM ?"
#

menu = []
3.times do |food|
  puts "Please enter a food item: \n>"
  food = gets.chomp.downcase
  menu << food
end
puts menu
