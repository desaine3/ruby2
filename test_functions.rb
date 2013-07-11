# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in functions.rb
require_relative 'functions'

# do the test
describe 'double' do
	it "works on integers" do
		assert_equal 8, double(4)
		assert_equal 2, double(1)
		assert_equal -2, double(-1)
	end
end

describe 'hello' do
	it "should say hello to the given name" do
		assert_equal "Hello tom", hello("tom")
		assert_equal "Hello Dave", hello("Dave")
	end
end

describe 'f' do
	it "works on decimals" do
		assert_equal 0.4, f(0.0), "f(0.0) should be 0.4"
		assert_equal 1.6, f(2.0), "f(2.0) should be 1.6"
		assert_equal -0.8, f(-1.0), "f(-1.0) should be -0.8"
	end
	it "works on integers" do
		assert_equal 0.4, f(0), "f(0) should be 0.4. Be careful of integer division!"
		assert_equal 1.6, f(2), "f(2) should be 1.6. Be careful of integer division!"
	end
end

describe 'insult' do
	it "works on a variety of words" do 
		assert_equal "Sheep off!!", insult("Sheep", 2)
		assert_equal "Goose off!!!!", insult("Goose", 4)
	end
	it "capitalizes words when necessary" do
		assert_equal "Cow off!", insult('cow', 1)
	end
end

describe 'i_love' do
	it "should default to ruby" do
		assert_equal "I love ruby!", i_love('ruby') 
	end
	it "should work with other input" do
		assert_equal "I love coding!", i_love('coding')
		assert_equal "I love whiskey!", i_love('whiskey')
		assert_equal "I love New York!", i_love("New York")
	end
end