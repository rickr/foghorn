require_relative 'test_helper'
include Foghorn::Methods

class MethodsTests < Minitest::Test
  def test_i_say_puts_a_string
    assert_respond_to I, :say
    assert_output("test\n"){I.say('test')}

    assert_output("test\n"){Boy.I.say('test')}
    assert_output("test\n"){Boy.i.say('test')}
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

    # Chaining Boy's
    assert_output(test_string){ Boy.I.say.Boy.i.say test_string }
    assert_output(test_string){ Boy.I.say.Boy.i.say.boy.i.say test_string }
  end

  def test_go_away
    ret = assert_raises(SystemExit){I.say.go_away 0}
    assert_equal 0, ret.status

    ret = assert_raises(SystemExit){I.say.go_away 1}
    assert_equal 1, ret.status

    ret = assert_raises(SystemExit){Boy.I.say.go_away 1}
    assert_equal 1, ret.status
  end
end
