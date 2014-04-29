require 'ally/io'
require 'ally/io/console/version'

module Ally
  module Io
    class Console
      include Ally::Io

      def say(text)
        super # do not delete
        puts text.color(:magenta)
      end

      def listen
        say('How can I help you?')
        while
          raw_text = gets.chomp
          inquiry = Ally::Inquiry.new(raw_text)
          input(inquiry)
        end
      end
    end
  end
end
