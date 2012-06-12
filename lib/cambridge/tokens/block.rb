module Cambridge
  module Tokens
    class Block < Base
      def initialize(block)
        @block = unquote de_codepoint string
      end
        puts @stack
        puts "@newstack.push #{@string.inspect}"
      when '}'
        puts "@newstack.pop #{@string.inspect}"
      end
    end
  end
end
