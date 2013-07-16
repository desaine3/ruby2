# Example:
#
#     What's your name? mary
#     How old are you, Mary? 5
#     I'm afraid I can't let you in, Mary. You're too young!
#
# Another example:
#
#     What's your name? doriS
#     How old are you, Doris? 103
#     Welcome to the club, Doris!

# TODO: Write this program! (You have to be 18 to enter the club.)



    print "What's your name?"
    name= gets.chomp.capitalize

    print "How old are you, " + name +"? "
    age = gets.chomp.to_i


    if age >=18 
        print "Welcome to the club, " + name + "!"

    else
        print "I'm afraid I can't let you in, " + name + ". You're too young!"
end