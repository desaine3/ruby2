print "Enter your name: "
# Wait for user input
main_name = gets
# Remove the 'newline' caused by pressing enter
main_name = main_name.chomp
# Capitalize the string
main_name = main_name.capitalize

print "Enter your guest's name: "
# Wait for user input
guest_name = gets
# Remove the 'newline' caused by pressing enter
guest_name = guest_name.chomp
# Capitalize the string
guest_name = guest_name.capitalize

puts "Welcome #{main_name} and #{guest_name}!"