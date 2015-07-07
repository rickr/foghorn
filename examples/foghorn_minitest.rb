require 'foghorn'
require 'minitest'
require 'minitest/autorun'
include Foghorn::Minitest

class FoghornExample < Minitest::Test
  def test_pass_examples
    # This is just a wrapper around assert_equal/refute_equal
    i_do_declare 1, :to_be, 1
    i_do_declare 1, :to_not_be, 2
  end
end
