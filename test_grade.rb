# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in grade.rb
require_relative 'grade'


# do the test
describe 'grade' do
	it "correctly identify a pass and fail" do
		assert_equal 'a', grade(99)
		assert_equal 'a', grade(80)
		assert_equal 'b', grade(60)
		assert_equal 'c', grade(45)
		assert_equal 'e', grade(0)
	end
end