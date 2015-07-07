module Foghorn::Minitest
  def self.included(base)
    require 'minitest/assertions'
    require_relative 'minitest/assertions'
  end
end
