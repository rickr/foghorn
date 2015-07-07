module Foghorn::Exceptions::StandardError
  class ::StandardError
    def to_s(*args)
      foghorn_exception = "#{Foghorn::Exceptions::Base.phrase}"

      # Don't print an empty message
      if(!super.empty? && super != self.class.to_s)
        foghorn_exception << "\n#{super}"
      end
      foghorn_exception
    end
  end
end
