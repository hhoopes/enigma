require 'minitest'
require_relative '../lib/key_generator'
require 'pry'

class KeyGeneratorTest < Minitest::Test
  def test_it_creates_a_key_5_digits_long
    key = KeyGenerator.new.generate
    assert_equal 5, key.to_s.length
  end
end
