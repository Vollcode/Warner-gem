require 'minitest/autorun'
require 'warner'

class HolaTest < Minitest::Test
  def test_track_files
    assert_equal [],
      Warner.track_files
  end
end
