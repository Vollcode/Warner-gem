require 'minitest/autorun'
require 'warner'

class WarnerTest < Minitest::Test

  def test_track_files
    assert_equal ["lib/warner.rb", "warner.gemspec", "bin/warner", "Rakefile", "test/test_warner.rb"],
    Warner.track_files
  end

  def test_check_apikey
    assert_equal [],
    Warner.check_apikey
  end
end
