%%{
  machine scanner;

  action _string { @mark_str = p }
  action string { @tokens << Tokens::String.new(data[@mark_str..p-1]) }

  action _command { @mark_cmd = p }
  action command { @tokens << Tokens::Command.new(data[@mark_cmd..p-1]) }

  action _number { @mark_num = p }
  action number { @tokens << Tokens::Number.new(data[@mark_num..p-1]) }

  action _beg_block { @mark_str = p }
  action Beg_Block { @tokens << Tokens::Command.new([@mark_str..p-1) }

  action _end_block { @mark_str = p }
  action end_block { @tokens << Tokens::Command.new([@mark_str..p-1) }

  action _bool { @mark_str = p }
  action bool { @tokens << Tokens::Command.new(data[@mark_str..p-1]) }
  
  SingleCharacter = any;

  StringComponent = SingleCharacter;

  String = ('"' any* '"') >_string %string;

  Number = (digit+) >_number %number;

  Beg_Block = ( "{" ) >_string %string;

  End_Block = ( "}" ) >_string %string;

  Bool = ( "{" any* "}" ) >_bool %bool;

  Command = (alpha alnum*) >_command %command;

  Token = Bool | String | Number | Command;

  Program = Token (space+ Token)*;

  main := Program;
}%%

module Cambridge
  module Parser
    class Scan
      def initialize
        @tokens = []
        @num_stack = []
      end

      def parse(line)
        data = line.codepoints.to_a
        stack = []
        p = 0
        ts = 0
        te = 0
        act = 0
        eof = data.length
        %% write data;
        %% write init;
        %% write exec;
        return @tokens
      end

      def atos(a)
        a.map(&:chr).join
      end
    end
  end
end
