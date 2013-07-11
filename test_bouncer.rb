# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# Try to load processpilot. Tell user to install if they don't have it.
begin
    require 'processpilot/processpilot'
rescue LoadError
    error_string = <<EOF
Oh dear .. it didn't work. To run tests you must install ProcessPilot:

    gem install ProcessPilot

EOF
    puts error_string
    exit
end

# The actual test
describe 'bouncer' do
    it "rejects youngsters" do
        ProcessPilot::pilot('bouncer.rb', :force_ruby_process_sync => true) do |oStdin, iStdout|
            iStdout.readpartial(100) # => How many pieces of cake do you have? 11
            oStdin.write("mary\n")
            assert_equal "How old are you, Mary? ", iStdout.readpartial(100) # => How many people want some cake? 3
            oStdin.write("17\n")
            output =  iStdout.gets.chomp # => 
            assert_equal "I'm afraid I can't let you in, Mary. You're too young!", output

        end

    end
    it "allows old'uns" do
        ProcessPilot::pilot('bouncer.rb', :force_ruby_process_sync => true) do |oStdin, iStdout|
            iStdout.readpartial(100) # => How many pieces of cake do you have? 11
            oStdin.write("doRIS\n")
            assert_equal "How old are you, Doris? ", iStdout.readpartial(100) # => How many people want some cake? 3
            oStdin.write("18\n")
            output =  iStdout.gets.chomp # => 
            assert_equal "Welcome to the club, Doris!", output

        end

    end
end