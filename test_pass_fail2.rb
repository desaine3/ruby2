# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in pass_fail.rb
require_relative 'pass_fail'

#   e.g pass_fail2(50,  3, 50) #=> 'pass' (1st mark is the pass mark)
#       pass_fail2(10, 99, 50) #=> 'fail' (1st mark isn't half the pass mark)
#       pass_fail2(25, 50, 50) #=> 'pass' (condition 2. holds)

# do the test
describe 'pass_fail2' do
	it "should correctly identify condition 1 passes" do
		assert_equal 'pass', pass_fail2(50, 3, 50)
	end
    it "should correctly identify fails" do
        assert_equal 'fail', pass_fail2(10, 99, 50)
    end
    it "should cope with odd pass marks" do
        assert_equal 'fail', pass_fail2(10, 0, 21)
    end
    it "should pass if condition2 holds" do
        assert_equal 'pass', pass_fail2(25, 50, 50)
    end
end