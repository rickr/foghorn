require_relative 'test_helper'

class MethodsTests < Minitest::Test
  def test_i_say_puts_a_string
    assert_respond_to I, :say
    assert_output("test\n"){I.say('test')}
  end

  def test_i_say_recursive
    test_string = "test string!\n"
    assert_output(test_string){ I.say.i.say test_string }
    assert_output(test_string){ I.say.i.say.i.say test_string }

    # We can call the I method in the I class as well
    assert_output(test_string){ I.say.I.say test_string }
    assert_output(test_string){ I.say.I.say.I.say test_string }

    # Chaining I's
    assert_output(test_string){ I.I.I.say test_string }
  end
end