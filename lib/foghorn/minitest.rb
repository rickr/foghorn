require 'minitest/assertions'

module Foghorn::Minitest
  module Minitest::Assertions
    def i_do_declare(act, operator, exp)
      if operator.to_sym == :to_be
        assert_equal(exp, act) if operator == :to_be
      elsif operator.to_sym == :to_not_be
        refute_equal(exp, act) if operator == :to_not_be
      else
        fail 'Operator not in :to_be or :to_not_be'
      end
    end
  end
end
