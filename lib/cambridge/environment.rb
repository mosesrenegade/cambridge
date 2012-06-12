module Cambridge
  class Environment
    def initialize
      @stack = []
      @newstack = []
    end

    #def newstack
    #  @newstack = []
    #end

    def eval(ruby)
      instance_eval ruby
    end
  end
end

