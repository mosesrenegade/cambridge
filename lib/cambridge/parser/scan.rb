
# line 1 "lib/cambridge/parser/scan.rl"

# line 43 "lib/cambridge/parser/scan.rl"


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
        
# line 25 "lib/cambridge/parser/scan.rb"
class << self
	attr_accessor :_scanner_trans_keys
	private :_scanner_trans_keys, :_scanner_trans_keys=
end
self._scanner_trans_keys = [
	0, 0, 34, 123, 34, 34, 
	9, 123, 34, 125, 9, 
	125, 9, 123, 125, 125, 
	9, 125, 9, 34, 9, 57, 
	9, 122, 9, 125, 9, 
	125, 9, 125, 9, 125, 
	9, 57, 9, 122, 9, 125, 
	9, 125, 9, 125, 0
]

class << self
	attr_accessor :_scanner_key_spans
	private :_scanner_key_spans, :_scanner_key_spans=
end
self._scanner_key_spans = [
	0, 90, 1, 115, 92, 117, 115, 1, 
	117, 26, 49, 114, 117, 117, 117, 117, 
	49, 114, 117, 117, 117
]

class << self
	attr_accessor :_scanner_index_offsets
	private :_scanner_index_offsets, :_scanner_index_offsets=
end
self._scanner_index_offsets = [
	0, 0, 91, 93, 209, 302, 420, 536, 
	538, 656, 683, 733, 848, 966, 1084, 1202, 
	1320, 1370, 1485, 1603, 1721
]

class << self
	attr_accessor :_scanner_indicies
	private :_scanner_indicies, :_scanner_indicies=
end
self._scanner_indicies = [
	0, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 1, 1, 1, 1, 1, 1, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 4, 1, 6, 5, 7, 7, 7, 
	7, 7, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 7, 5, 8, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 9, 9, 9, 9, 
	9, 9, 9, 9, 9, 9, 5, 5, 
	5, 5, 5, 5, 5, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 5, 
	5, 5, 5, 5, 5, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 10, 
	10, 10, 10, 10, 10, 10, 10, 11, 
	5, 13, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 14, 12, 15, 15, 
	15, 15, 15, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 15, 12, 16, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 17, 17, 17, 
	17, 17, 17, 17, 17, 17, 17, 12, 
	12, 12, 12, 12, 12, 12, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	12, 12, 12, 12, 12, 12, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	18, 18, 18, 18, 18, 18, 18, 18, 
	11, 12, 14, 12, 19, 19, 19, 19, 
	19, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 19, 1, 0, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 1, 1, 1, 
	1, 1, 1, 1, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 1, 1, 
	1, 1, 1, 1, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 4, 1, 
	21, 20, 22, 22, 22, 22, 22, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 22, 20, 23, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 24, 24, 24, 24, 24, 24, 24, 
	24, 24, 24, 20, 20, 20, 20, 20, 
	20, 20, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 20, 20, 20, 20, 
	20, 20, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 25, 25, 25, 25, 
	25, 25, 25, 25, 4, 20, 21, 20, 
	26, 26, 26, 26, 26, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 26, 
	5, 6, 5, 27, 27, 27, 27, 27, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 27, 5, 6, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 28, 28, 28, 28, 28, 28, 
	28, 28, 28, 28, 5, 29, 29, 29, 
	29, 29, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 29, 5, 6, 5, 
	5, 5, 5, 5, 5, 5, 5, 5, 
	5, 5, 5, 5, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 5, 5, 
	5, 5, 5, 5, 5, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 5, 
	5, 5, 5, 5, 5, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 30, 
	30, 30, 30, 30, 30, 30, 30, 5, 
	31, 31, 31, 31, 31, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 31, 
	12, 13, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 14, 12, 32, 32, 
	32, 32, 32, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 32, 12, 13, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 33, 33, 33, 
	33, 33, 33, 33, 33, 33, 33, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 14, 12, 34, 34, 34, 34, 
	34, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 34, 12, 13, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	14, 12, 35, 35, 35, 35, 35, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 35, 12, 13, 12, 12, 12, 12, 
	12, 12, 12, 12, 12, 12, 12, 12, 
	12, 36, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 12, 12, 12, 12, 12, 
	12, 12, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 36, 12, 12, 12, 12, 
	12, 12, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 36, 36, 36, 36, 36, 
	36, 36, 36, 36, 12, 12, 14, 12, 
	37, 37, 37, 37, 37, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 37, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 38, 
	38, 38, 38, 38, 38, 38, 38, 38, 
	38, 1, 39, 39, 39, 39, 39, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 39, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 40, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 1, 1, 1, 1, 1, 
	1, 1, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 40, 1, 1, 1, 1, 
	1, 1, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 40, 40, 40, 40, 40, 
	40, 40, 40, 40, 1, 41, 41, 41, 
	41, 41, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 41, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 21, 20, 42, 42, 42, 42, 42, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 42, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 21, 
	20, 44, 44, 44, 44, 44, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	44, 20, 20, 20, 20, 20, 20, 20, 
	20, 20, 20, 20, 20, 20, 20, 20, 
	45, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 20, 20, 20, 20, 20, 20, 
	20, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 45, 20, 20, 20, 20, 20, 
	20, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 45, 45, 45, 45, 45, 45, 
	45, 45, 45, 20, 20, 21, 20, 0
]

class << self
	attr_accessor :_scanner_trans_targs
	private :_scanner_trans_targs, :_scanner_trans_targs=
end
self._scanner_trans_targs = [
	2, 0, 16, 17, 7, 2, 9, 3, 
	9, 10, 11, 4, 4, 12, 14, 5, 
	12, 13, 15, 6, 7, 18, 8, 4, 
	19, 20, 3, 3, 10, 3, 11, 5, 
	5, 13, 5, 5, 15, 6, 16, 6, 
	17, 8, 8, 19, 8, 20
]

class << self
	attr_accessor :_scanner_trans_actions
	private :_scanner_trans_actions, :_scanner_trans_actions=
end
self._scanner_trans_actions = [
	1, 0, 2, 3, 4, 0, 0, 0, 
	1, 2, 3, 4, 0, 0, 0, 0, 
	1, 2, 3, 0, 0, 0, 0, 1, 
	2, 3, 5, 6, 0, 7, 0, 5, 
	6, 0, 8, 7, 0, 6, 0, 7, 
	0, 8, 6, 0, 7, 0
]

class << self
	attr_accessor :_scanner_eof_actions
	private :_scanner_eof_actions, :_scanner_eof_actions=
end
self._scanner_eof_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 5, 6, 7, 5, 6, 8, 7, 
	6, 7, 8, 6, 7
]

class << self
	attr_accessor :scanner_start
end
self.scanner_start = 1;
class << self
	attr_accessor :scanner_first_final
end
self.scanner_first_final = 9;
class << self
	attr_accessor :scanner_error
end
self.scanner_error = 0;

class << self
	attr_accessor :scanner_en_main
end
self.scanner_en_main = 1;


# line 62 "lib/cambridge/parser/scan.rl"
        
# line 355 "lib/cambridge/parser/scan.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = scanner_start
end

# line 63 "lib/cambridge/parser/scan.rl"
        
# line 364 "lib/cambridge/parser/scan.rb"
begin
	testEof = false
	_slen, _trans, _keys, _inds, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = cs << 1
	_inds = _scanner_index_offsets[cs]
	_slen = _scanner_key_spans[cs]
	_trans = if (   _slen > 0 && 
			_scanner_trans_keys[_keys] <= data[p].ord && 
			data[p].ord <= _scanner_trans_keys[_keys + 1] 
		    ) then
			_scanner_indicies[ _inds + data[p].ord - _scanner_trans_keys[_keys] ] 
		 else 
			_scanner_indicies[ _inds + _slen ]
		 end
	cs = _scanner_trans_targs[_trans]
	if _scanner_trans_actions[_trans] != 0
	case _scanner_trans_actions[_trans]
	when 1 then
# line 4 "lib/cambridge/parser/scan.rl"
		begin
 @mark_str = p 		end
	when 5 then
# line 5 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::String.new(data[@mark_str..p-1]) 		end
	when 3 then
# line 7 "lib/cambridge/parser/scan.rl"
		begin
 @mark_cmd = p 		end
	when 7 then
# line 8 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Command.new(data[@mark_cmd..p-1]) 		end
	when 2 then
# line 10 "lib/cambridge/parser/scan.rl"
		begin
 @mark_num = p 		end
	when 6 then
# line 11 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Number.new(data[@mark_num..p-1]) 		end
	when 4 then
# line 19 "lib/cambridge/parser/scan.rl"
		begin
 @mark_str = p 		end
	when 8 then
# line 20 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Command.new(data[@mark_str..p-1]) 		end
# line 432 "lib/cambridge/parser/scan.rb"
	end
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	  case _scanner_eof_actions[cs]
	when 5 then
# line 5 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::String.new(data[@mark_str..p-1]) 		end
	when 7 then
# line 8 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Command.new(data[@mark_cmd..p-1]) 		end
	when 6 then
# line 11 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Number.new(data[@mark_num..p-1]) 		end
	when 8 then
# line 20 "lib/cambridge/parser/scan.rl"
		begin
 @tokens << Tokens::Command.new(data[@mark_str..p-1]) 		end
# line 466 "lib/cambridge/parser/scan.rb"
	  end
	end

	end
	if _goto_level <= _out
		break
	end
end
	end

# line 64 "lib/cambridge/parser/scan.rl"
        return @tokens
      end

      def atos(a)
        a.map(&:chr).join
      end
    end
  end
end
