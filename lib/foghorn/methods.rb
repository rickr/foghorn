module Foghorn::Methods
  # http://foghornleghornquotes.com/foghorn-leghorn-sayings/

  class I
    # These class methods (and aliases) allow us to
    # repeat ourselves repeat ourselves without using
    # method missing
    def self.i
      Foghorn::Methods::I
    end
    self.singleton_class.send(:alias_method, :I, :i) # This is kind of scary...

    def self.boy
      Foghorn::Methods::I
    end
    self.singleton_class.send(:alias_method, :Boy, :boy)

    ###
    ### If we get a string puts it, otherwise return our I class so
    ### we can recurse
    def self.say(string_or_class = nil)
      if string_or_class
        puts string_or_class
      else
        Foghorn::Methods::I
      end
    end
    self.singleton_class.send(:alias_method, :boy, :say)

    def self.go_away(exit_code = 0)
      exit exit_code
    end
  end


  # Allow us to preface our calls with these classes eg Boy.I.say
  class Boy < I;  end
  class Go < I; end
end
