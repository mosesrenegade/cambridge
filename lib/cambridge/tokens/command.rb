module Cambridge
  module Tokens
    class Command < Base
      def initialize(name)
        @name = de_codepoint name
      end

      def to_ruby
        case @name
        when 'dump'
          "puts @stack.inspect"
        when 'prints'
          "puts '@stack.pop'"
        when 'printi'
          "puts @stack.pop.to_s"
        when 'eval'
          "@stack.pop.call"
        when '+'
          "@stack.push(@stack.pop + @stack.pop)"
        when '*'
          "@stack.push(@stack.pop * @stack.pop)"
        when '-'
          "@stack.push(@stack.pop * @stack.pop)"
        when '/'
          "@stack.push(@stack.pop * @stack.pop)"
        when '{'
          "@stack.push(proc do"
        when '}'
          "end)"
        end
      end
    end
  end
end
