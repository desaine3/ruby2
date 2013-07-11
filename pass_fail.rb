# This function returns the string 'pass' or 'fail' depending
# on whether the student has reached the pass mark:
#
#    pass_fail(20) #=> 'pass'
#    pass_fail(60) #=> 'fail'
#
def pass_fail(mark)
	outcome = 'fail'

	# TODO write your if statement here. It should change outcome to 'pass' 
    # if the mark is at least the pass mark. The pass mark is 50.

	return outcome
end



# The rules in this exam are more complicated (and the pass_mark isn't necessarily 50).
# There are two ways a student can pass:
#     1. If their first mark (mark1) at least the pass mark
#     2. If their first mark is at least half the pass mark and their second
#          mark (mark2) at least the pass mark
#
#   e.g pass_fail2(50,  3, 50) #=> 'pass' (1st mark is the pass mark)
#       pass_fail2(10, 99, 50) #=> 'fail' (1st mark isn't half the pass mark)
#       pass_fail2(25, 50, 50) #=> 'pass' (condition 2. holds)
#
def pass_fail2(mark1, mark2, pass_mark)
	# TODO write the function here, using if .. else .. statements

end