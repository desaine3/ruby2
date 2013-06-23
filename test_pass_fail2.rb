# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in pass_fail.rb
require_relative 'pass_fail'


# do the test
describe 'pass_fail2' do
	it "correctly identify a pass and fail" do
		assert_equal 'fail', pass_fail2(20, 22)
		assert_equal 'fail', pass_fail2(49.99, 50)
		assert_equal 'pass', pass_fail2(50, 50)
		assert_equal 'pass', pass_fail2(100, 90)
	end
end