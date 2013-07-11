def get_name
	# Wait for user input
	name = gets
	# Remove the 'newline' caused by pressing enter
	name = name.chomp
	# Capitalize the string
	name = name.capitalize
	return name
end

print "Enter your name: "
	main_name = get_name
print "Enter your guest's name: "
	guest_name = get_name

puts "Welcome #{main_name} and #{guest_name}!"