# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in double.rb
require_relative 'encode'

# do the test
describe 'encode' do
	it "works on integers" do
		assert_equal 2, encode(4)
		assert_equal 0, encode(6)
		assert_equal 3, encode(5)
	end
end

describe 'decode' do
	it "undoes encode" do
		assert_equal 4, decode(encode(4))
		assert_equal 6, decode(encode(6))
		assert_equal 1, decode(encode(1))
		assert_equal 2, decode(encode(2))
	end
end	