module Foghorn::Exceptions::StandardError
  class ::StandardError
    def to_s(*args)
      "#{Foghorn::Exceptions::Base.phrase}\n#{self.class}: #{super}"
    end
  end
end
