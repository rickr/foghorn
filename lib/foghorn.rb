require "foghorn/version"

module Foghorn
  class I

    class Say
      def initialize(string = nil)
        puts string unless string.nil?
      end
    end

    def self.i
      I
    end
    self.singleton_class.send(:alias_method, :I, :i) # This is kind of scary...

    def self.say(string_or_class = nil)
      if string_or_class
        puts string_or_class
      else
        I
      end
    end
  end
end
