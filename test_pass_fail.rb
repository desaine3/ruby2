# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in pass_fail.rb
require_relative 'pass_fail'

# do the test
describe 'pass_fail' do
	it "correctly identify a pass and fail" do
		assert_equal 'fail', pass_fail(20)
		assert_equal 'fail', pass_fail(49.99)
		assert_equal 'pass', pass_fail(50)
		assert_equal 'pass', pass_fail(100)
	end
end

