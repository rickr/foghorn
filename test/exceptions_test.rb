require_relative 'test_helper'
include Foghorn::Exceptions

class ExceptionsTests < Minitest::Test
  def setup
    @phrases = Foghorn::Exceptions::Base.phrases
  end

  def test_phrase_provided
    assert_includes(@phrases, Foghorn::Exceptions::Base.phrase)
  end

  ###
  ### phrases are returned ending with \n
  def test_exception_message_includes_phrase
    exception = assert_raises do
      1 / 0
    end
    phrase = exception.to_s.split("\n").first
    assert_includes(@phrases, phrase)
  end

  def test_existing_messages_remain
    exception = assert_raises do
      [1, 2, 3].first(4, 5)
    end
    arg_error = exception.to_s.split("\n").last
    assert_equal('ArgumentError: wrong number of arguments (2 for 1)', arg_error)
  end

  def test_custom_message_is_used
    exception = assert_raises do
      raise TypeError, 'this is a custom message'
    end
    custom_message = exception.to_s.split("\n").last
    assert_equal 'TypeError: this is a custom message', custom_message
  end

  def test_message_equals_to_s
    exception = assert_raises do
      1 / 0
    end
    assert_equal exception.to_s.split("\n")[1..-1], exception.message.split("\n")[1..-1]
  end
end
