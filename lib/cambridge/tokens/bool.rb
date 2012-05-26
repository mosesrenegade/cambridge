module Cambridge
  module Tokens
    class Bool < Base
      def initialize(bool)
        @bool = unquote de_codepoint string
      end

      def to_ruby
      case @bool
      when '{'
        "puts @stack.pop"
      when '}'
        "puts @stack.pop"
      end
    end
  end
end
