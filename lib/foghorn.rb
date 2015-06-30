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

    def self.I
      I
    end

    def self.say(string_or_class = nil)
      if string_or_class
        puts string_or_class
      else
        I
      end
    end
  end
end
