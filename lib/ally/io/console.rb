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
        say('How can I help you? (to quit, enter "quit")')
        loop do
          i = STDIN.gets.chomp
          if %w(quit exit).include?(i.downcase)
            say('exiting...')
            break
          end
          input(Ally::Inquiry.new(i))
        end
      end
    end
  end
end
