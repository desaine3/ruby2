# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in double.rb
require_relative 'double'

# do the test
describe 'double' do
	it "works on integers" do
		assert_equal 8, double(4)
		assert_equal 2, double(1)
		assert_equal -2, double(-1)
	end
end