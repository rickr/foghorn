require_relative 'test_helper'

class VersionTests < Minitest::Test
  def test_version_is_defined
    assert Foghorn::VERSION, 'No version'
  end
end
