require 'minitest'
require_relative '../lib/offset_calculator'
require 'pry'

class OffsetCalculatorTest < Minitest::Test
  def test_it_creates_an_offset_hash_from_a_date
    date = Date.today
    key = KeyGenerator.new.generate
    calc = OffsetCalculator.new(key, date)

    assert_instance_of Hash, calc.offset_hash
  end

  def test_offsets_represent_mathematically_derived_values
    date = Date.today
    key = KeyGenerator.new.generate
    date_math = (date.strftime("%d%m%y").to_i ^ 2).to_s.slice(-4..-1).chars

    calc = OffsetCalculator.new(key, date)
    calc.offset_hash.each do |offset, value|
      assert_equal value, date_math.shift.to_i
    end
  end
end
