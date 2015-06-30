module Foghorn::Methods
  class I
    def self.i
      Foghorn::Methods::I
    end
    self.singleton_class.send(:alias_method, :I, :i) # This is kind of scary...

    def self.boy
      Foghorn::Methods::I
    end
    self.singleton_class.send(:alias_method, :Boy, :boy)

    class Say
      def initialize(string = nil)
        puts string unless string.nil?
      end
    end

    def self.say(string_or_class = nil)
      if string_or_class
        puts string_or_class
      else
        Foghorn::Methods::I
      end
    end
  end

  class Boy < I;  end
end
