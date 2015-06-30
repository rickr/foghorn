require_relative 'test_helper'
include Foghorn::Minitest

class MinitestTests < Minitest::Test
  def test_i_do_declare
    test_var = 'string'

    assert(i_do_declare true, :to_be, true)
    assert(i_do_declare 1, :to_be, 1)
    assert(i_do_declare test_var, :to_be, 'string')

    refute(i_do_declare false, :to_not_be, true)
    refute(i_do_declare 1, :to_not_be, 2)
    refute(i_do_declare test_var, :to_not_be, 'not_string')

    assert_raises{i_do_declare false, :invalid, true}
  end
end
