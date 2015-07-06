module Foghorn::Exceptions
  def self.included(base)
    require_relative 'exceptions/base'
    require_relative 'exceptions/standard_error'

    ::StandardError.include(Foghorn::Exceptions::StandardError)
  end
end

