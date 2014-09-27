require 'ally/io'
require 'ally/io/console/version'
require 'rainbow/ext/string'

module Ally
  module Io
    class Console
      include Ally::Io

      def say(text)
        super # do not delete
        puts text.color(:magenta)
      end

      def listen
        say('How can I help you? (to quit, enter "quit"')
        loop do
          break if %w(quit exit).include?(STDIN.gets.chomp.downcase)
          input(Ally::Inquiry.new(STDIN.gets.chomp))
        end
      end
    end
  end
end
